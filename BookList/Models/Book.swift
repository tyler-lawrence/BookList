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
    var color:String

    
    init(title: String, author: String, dateCompleted: Date? = nil, recommendedBy: String? = nil, isCompleted:Bool = false, color:String) {
        self.title = title
        self.author = author
        self.dateCompleted = dateCompleted
        self.recommendedBy = recommendedBy
        self.isCompleted = isCompleted
        self.color = color
    }
    
}




#if DEBUG
extension Book{
    static let testBook = Book(title: "Beserk", author: "cannot remember", isCompleted: false, color: "red")
}
#endif

struct black: ViewModifier {
    var book:Book
    func body(content: Content) -> some View {
        
        
        
        if book.color == "black"{
                content
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 10))
        }else if book.color == "purple"{
            content
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
                .background(.purple)
                .clipShape(.rect(cornerRadius: 10))
        }else if book.color == "gray"{
            content
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
                .background(.gray)
                .clipShape(.rect(cornerRadius: 10))
        }else if book.color == "blue"{
            content
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
                .clipShape(.rect(cornerRadius: 10))
        }else if book.color == "red"{
            content
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
                .background(.red)
                .clipShape(.rect(cornerRadius: 10))
        }
      
    }
}
