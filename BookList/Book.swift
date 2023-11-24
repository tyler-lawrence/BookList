//
//  Book.swift
//  BookList
//
//  Created by Tyler Lawrence1 on 11/21/23.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Book: Identifiable {
    let id = UUID()
    var title: String
    var author: String
    var dateCompleted: Date?
    var recommendedBy: String?
    var isCompleted:Bool
    
    init(title: String, author: String, dateCompleted: Date? = nil, recommendedBy: String? = nil, isCompleted:Bool = false) {
        self.title = title
        self.author = author
        self.dateCompleted = dateCompleted
        self.recommendedBy = recommendedBy
        self.isCompleted = isCompleted
    }
}



#if DEBUG
extension Book{
    static let testBook = Book(title: "Beserk", author: "cannot remember", isCompleted: false)
}
#endif
