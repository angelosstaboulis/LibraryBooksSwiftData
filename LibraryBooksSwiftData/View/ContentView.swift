//
//  ContentView.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 7/2/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationStack{
                FieldsSection(book: .init(id: "", title: "", isbn: "", price: ""))
            }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
