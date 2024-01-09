//
//  Author.swift
//  BookList
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 11/24/23.
//

import Foundation
import SwiftData
@Model
class Author: Identifiable {
    let id = UUID()
    var name:String
    var books:[Book]
    
    init(name: String, books: [Book]) {
        self.name = name
        self.books = books
    }
}
