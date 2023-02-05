//
//  Repository.swift
//  Notes-GraphQL-APP
//
//  Created by Rohit Kothawale on 04/02/23.
//

import Foundation

class Repository {
    func getAllNotes(completion: @escaping (Notes?) -> ()) {
        Network.shared.apollo.fetch(query: FetchAllNotesQuery(), cachePolicy: .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let err):
                print(err.localizedDescription)
                completion(nil)
            case .success(let data):
                let model = data.data?.getAllNotes!.decodeModel(type: Notes.self)
                completion(model)
            }
        }
    }

    func addNewNote(newNote: NewNote, completion: @escaping (Note?) -> ()) {
        Network.shared.apollo.perform(mutation: CreateNewNoteMutation(newNote: newNote), publishResultToStore: true) { result in
            switch result {
            case .failure(let err):
                print(err.localizedDescription)
                completion(nil)
            case .success(let data):
                let model = data.data?.createNote!.decodeModel(type: Note.self)
                completion(model)
            }
        }
    }

    func updateNote(id: String, note: NewNote, completion: @escaping (Note?) -> ()) {
        Network.shared.apollo.perform(mutation: UpdateNoteMutation(id: id, note: note)) { result in
            switch result {
            case .failure(let err):
                print(err.localizedDescription)
                completion(nil)
            case .success(let data):
                let model = data.data?.updateNote?.decodeModel(type: Note.self)
                completion(model)
            }
        }
    }

    func deleteNote(id: String, completion: @escaping (Note?) -> ()) {
        Network.shared.apollo.perform(mutation: DeleteNoteMutation(id: id)) { result in
            switch result {
            case .failure(let err):
                print(err.localizedDescription)
                completion(nil)
            case .success(let data):
                let model = data.data?.deleteNote?.decodeModel(type: Note.self)
                completion(model)
            }
        }
    }
}
