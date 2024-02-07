//
//  Item.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 7/2/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var id:String
    var title: String
    var isbn:String
    var price:String
    init(id: String, title: String, isbn: String, price: String) {
        self.id = id
        self.title = title
        self.isbn = isbn
        self.price = price
    }
}
