//
//  String+DateFormatter.swift
//  Notes-GraphQL-APP
//
//  Created by Rohit Kothawale on 05/02/23.
//

import Foundation

enum DateFormat {
    static let APP_DATE_FORMAT = "dd-MM-yyyy"
}

extension String {
    func convertToAppDateFormat() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormat.APP_DATE_FORMAT

        return dateFormatter.date(from: self)
    }
}

extension Date {
    func convertToString() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormat.APP_DATE_FORMAT
        return dateFormatter.string(from: self)
    }
}
