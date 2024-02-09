//
//  MenuSection.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 8/2/24.
//

import SwiftUI
import SwiftData
struct MenuSection: View {
    @Environment(\.modelContext) private var modelContext
    @State var model = LibraryViewModel()
    @Query var items: [Item]
    @State var book:Item
    @State var getItem:Item
    var body: some View {
        HStack{
            Button {
                     model.insert(book: book, modelContext: modelContext)
                     clearFields(book: book)
             
            } label: {
                Text("Add").frame(width:70,height:60,alignment: .center)
            }
            Button {
                getItem = model.find(book: book, items: items)
            } label: {
                Text("Find").frame(width:70,height:60,alignment: .center)
            }
            Button {
                model.update(getItem: getItem, book: book, modelContext: modelContext)
                clearFields(book: book)
                
            } label: {
                Text("Update ").frame(width:70,height:60,alignment: .center)
            }
            Button {
                    model.delete(items: items, book: book, modelContext:modelContext)
                    clearFields(book: book)
            } label: {
                Text("Delete").frame(width:70,height:60,alignment: .center)
            }
            
            NavigationLink {
                ListRecords()
            } label: {
                Text("Browse").frame(width:70,height:60,alignment: .center)
            }
        } .navigationTitle("LibraryBooksSwiftData")
        .navigationBarTitleDisplayMode(.inline)
        .frame(width:400,height:300,alignment: .leading)
    }
    func clearFields(book:Item){
        book.price = ""
        book.isbn = ""
        book.title = ""
        book.id = ""
    }
    
}

#Preview {
    MenuSection(book: .init(id: "", title: "", isbn: "", price: ""), getItem: .init(id: "", title: "", isbn: "", price: ""))
}
