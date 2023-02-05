//
//  addNoteViewController.swift
//  Notes-GraphQL-APP
//
//  Created by Rohit Kothawale on 04/02/23.
//

import UIKit

class AddNoteViewController: UIViewController {

    var note: Note?
    weak var sourceVC: ViewController?

    private let repository = Repository()
    
    @IBOutlet weak var noteTitleTextField: UITextField!
    @IBOutlet weak var noteTextView: UITextView!
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        let titleText = noteTitleTextField.text
        let noteText = noteTextView.text
        let newNote: NewNote = NewNote(title: titleText, date: "1234", note: noteText)
        
        if let note = note {
            repository.updateNote(id: note.id!, note: newNote) {[weak self] note in
                self?.updateNote(newNote: note)
                print("Note updated successfully...\(String(describing: note))")
            }
        } else {
            repository.addNewNote(newNote: newNote) {[weak self] note in
                self?.updateNote(newNote: note)
                print("Note created successfully...\(String(describing: note))")
            }
        }
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        guard let existingNote = note else {
            return
        }

        repository.deleteNote(id: existingNote.id!) {[weak self] deletedNote in
            if let sourceVC = self?.sourceVC {
                let notes = sourceVC.notesArray
                if let _ = self?.note {
                    sourceVC.notesArray = notes.filter({ note in
                        deletedNote?.id != note.id
                    })
                }
                self?.navigationController?.popViewController(animated: true)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let note = note {
            noteTitleTextField.text = note.title
            noteTextView.text = note.note
        }

        // Do any additional setup after loading the view.
    }

    func updateNote(newNote: Note?) {
        guard let newNote = newNote else {
            print("Kay baghato kahich nahi bhetla")
            self.navigationController?.popViewController(animated: true)
            return
        }

        if let sourceVC = sourceVC {
            var notes = sourceVC.notesArray
            if let _ = self.note {
                sourceVC.notesArray = notes.map({ note in
                    if note.id == newNote.id {
                        return newNote
                    }
                    return note
                })
            } else {
                notes.append(newNote)
            }
        }
        self.navigationController?.popViewController(animated: true)
    }

}
