//
//  ListRecords.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 7/2/24.
//

import SwiftUI
import SwiftData
struct ListRecords: View {
    @Query private var items: [Item]
    var body: some View {
            List(items,id:\.self){item in
                VStack{
                    Text(item.id)
                    Text(item.title)
                    Text(item.isbn)
                    Text(item.price)
                }
            }.navigationTitle("LibraryBooksSwiftData")
                .navigationBarTitleDisplayMode(.inline)
        
    }
}

