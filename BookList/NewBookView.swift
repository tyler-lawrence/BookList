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
    @State var color: String = ""
    @Query private var Books: [Author]

    var body: some View {
        Form{
            TextField("Title", text: $title)
            TextField("Author", text: $author)
            TextField("Recommended by", text: $recommender)
            TextField("Black", text: $color)
            HStack{
                Circle()
                    .fill(.red)
                    .frame(width:30)
                    .onTapGesture {
                        color = "red"
                    }
                    
                Circle()
                    .fill(.purple)
                    .frame(width:30)
                    .onTapGesture {
                        color = "purple"
                    }
                Circle()
                    .fill(.blue)
                    .frame(width:30)
                    .onTapGesture {
                        color = "blue"
                    }
                Circle()
                    .fill(.black)
                    .frame(width:30)
                    .onTapGesture {
                        color = "black"
                    }
                Circle()
                    .fill(.gray)
                    .frame(width:30)
                    .onTapGesture {
                        color = "gray"
                    }
            }
          
            Section{
                Button{
                    addBook()
                    addAuthor()
                    dismiss()
                } label: {
                    Text("Add")
                }
            }
        }
        List{
            ForEach(Books){ smh in
                Button{
                    author = smh.name
                }label:{
                    Text(smh.name)

                }
                
            }
        }
    }
    
    private func addBook() {
        withAnimation {
            let newBook = Book(title: title, author: author, recommendedBy: recommender, color: color)
            modelContext.insert(newBook)
        }
    }
    
    private func addAuthor(){
        let newArtist = Author(name: author)
        modelContext.insert(newArtist)
    }
}

#Preview {
    NewBookView()
}
