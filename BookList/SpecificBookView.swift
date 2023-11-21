//
//  SpecificBookView.swift
//  BookList
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 11/21/23.
//

import SwiftUI

struct SpecificBookView: View {
    var book:Book
    var body: some View {
        VStack{
            Text(book.title)
            Text(book.author)
            Text(book.recommendedBy ?? "didn't put it")
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(Color.red)
           .opacity(0.8)
        )
        
        
      
    }
}

#Preview {
    SpecificBookView(book: Book.testBook)
}
