//
//  FieldsSection.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 8/2/24.
//

import SwiftUI

struct FieldsSection: View {
    @State var book:Item
    var body: some View {
        VStack{
            Text("ID:").frame(width:300,height:45,alignment: .leading)
            TextField("ID:", text: $book.id).frame(width:300,height:45,alignment: .leading)
            Text("Title:").frame(width:300,height:45,alignment: .leading)
            TextField("Title", text: $book.title).frame(width:300,height:45,alignment: .leading)
               
            Text("ISBN:").frame(width:300,height:45,alignment: .leading)
            TextField("ISBN", text: $book.isbn).frame(width:300,height:45,alignment: .leading)
            Text("Price:").frame(width:300,height:45,alignment: .leading)
            TextField("Price", text: $book.price).frame(width:300,height:45,alignment: .leading)
        }.frame(width:1200,height:460,alignment: .center)
        MenuSection(book: book, getItem: .init(id: "", title: "", isbn: "", price: ""))
    }
}

#Preview {
    FieldsSection(book: .init(id: "", title: "", isbn: "", price: ""))
}
