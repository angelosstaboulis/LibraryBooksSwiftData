//
//  LibraryViewModel.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 8/2/24.
//

import Foundation
import SwiftData
final class LibraryViewModel{
    func insert(book:Item,modelContext:ModelContext){
        do{
            let newItem = Item(id: book.id, title: book.title, isbn: book.isbn, price: book.price)
            modelContext.insert(newItem)
            try modelContext.save()
        }catch{
            debugPrint("something went wrong!!!!")
        }
    }
    func update(getItem:Item,book:Item,modelContext:ModelContext){
        do{
            getItem.title = book.title
            getItem.isbn = book.isbn
            getItem.id = book.id
            getItem.price = book.price
            try modelContext.save()
        }catch{
            debugPrint("something went wrong!!!!")
        }
    }
    func delete(items:[Item],book:Item,modelContext:ModelContext){
        do{
            for item in items {
                if item.title == book.title{
                    modelContext.delete(item)
                    try modelContext.save()
                    break
                }
            }
        }catch{
            debugPrint("something went wrong!!!!")
        }
    }
    func find(book:Item,items:[Item])->Item{
        var getItem = Item(id: "", title: "", isbn: "", price: "")
        for item in items {
            if item.title == book.title{
                book.price = item.price
                book.isbn = item.isbn
                book.title = item.title
                book.id = item.id
                getItem = item
            }
        }
        return getItem
    }
}
