//
//  Model.swift
//  Notes-GraphQL-APP
//
//  Created by Rohit Kothawale on 04/02/23.
//

import Foundation
import UIKit

struct Note: Decodable {
    var id: String?
    var title: String?
    var date: Date?
    var note: String?

    enum codingKey: CodingKey {
        case id
        case title
        case date
        case note
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: codingKey.self)
        
        let existingDate = try values.decodeIfPresent(String.self, forKey: .date)
        
        self.id = try values.decodeIfPresent(String.self, forKey: .id)
        self.title = try values.decodeIfPresent(String.self, forKey: .title)
        self.date = existingDate?.convertToAppDateFormat()
        self.note = try values.decodeIfPresent(String.self, forKey: .note)
    }
}

struct Notes: Decodable {
    var elements: [Note]
}


