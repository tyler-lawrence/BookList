//
//  Book.swift
//  BookList
//
//  Created by Tyler Lawrence1 on 11/21/23.
//

import Foundation
import SwiftData

@Model
class Book: Identifiable {
    let id = UUID()
    var title: String
    var author: String
    var dateCompleted: Date?
    var recommendedBy: String?
    
    init(title: String, author: String, dateCompleted: Date? = nil, recommendedBy: String? = nil) {
        self.title = title
        self.author = author
        self.dateCompleted = dateCompleted
        self.recommendedBy = recommendedBy
    }
}
