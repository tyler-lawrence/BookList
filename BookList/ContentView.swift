//
//  ContentView.swift
//  BookList
//
//  Created by Tyler Lawrence1 on 11/21/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var Books: [Book]
    @State var showingNewBookSheet = false

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(Books) { book in
                    NavigationLink {
                       SpecificBookView(book: book)
                    } label: {
                        Text(book.title)
                    }
                }
                .onDelete(perform: deleteBooks)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button{
                        showingNewBookSheet.toggle()
                    } label: {
                        Label("Add Book", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a Book")
        }
        .sheet(isPresented: $showingNewBookSheet){
            NewBookView()
        }
    }

    private func deleteBooks(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(Books[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Book.self, inMemory: true)
}
