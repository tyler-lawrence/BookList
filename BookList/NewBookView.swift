//
//  NewBookView.swift
//  BookList
//
//  Created by Tyler Lawrence1 on 11/21/23.
//

import SwiftUI
import SwiftData

struct NewBookView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State var title: String = ""
    @State var author: String = ""
    @State var recommender: String = ""
    var body: some View {
        Form{
            TextField("Title", text: $title)
            TextField("Author", text: $author)
            TextField("Recommended by", text: $recommender)
            Section{
                Button{
                    addBook()
                    dismiss()
                } label: {
                    Text("Add")
                }
            }
        }
    }
    
    private func addBook() {
        withAnimation {
            let newBook = Book(title: title, author: author)
            modelContext.insert(newBook)
        }
    }
}

#Preview {
    NewBookView()
}
