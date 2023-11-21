//
//  Book.swift
//  BookList
//
//  Created by Tyler Lawrence1 on 11/21/23.
//

import Foundation
import SwiftData

@Model
class Book {
    let id = UUID()
    let title: String
    let author: String
    var dateCompleted: Date?
    
    init(title: String, author: String, dateCompleted: Date? = nil) {
        self.title = title
        self.author = author
        self.dateCompleted = dateCompleted
    }
}
