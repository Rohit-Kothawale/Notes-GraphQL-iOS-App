//
//  ViewController.swift
//  Notes-GraphQL-APP
//
//  Created by Rohit Kothawale on 04/02/23.
//

import UIKit

class ViewController: UIViewController {
    var notesArray: [Note] = []

    @IBOutlet weak var tableView: UITableView!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddNoteViewController
        
        if segue.identifier == "updateNoteSegue" {
            vc.note = notesArray[tableView.indexPathForSelectedRow!.row]
            vc.sourceVC = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self;
        tableView.dataSource = self;

        fetchNotes()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    func fetchNotes() {
        let repository = Repository()

        repository.getAllNotes { [weak self] notes in
            if let strongSelf = self, let notes = notes {
                strongSelf.notesArray = notes.elements
                strongSelf.tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath)
        cell.textLabel?.text = notesArray[indexPath.row].title
        return cell
    }
}

