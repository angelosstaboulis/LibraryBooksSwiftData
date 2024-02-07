//
//  LibraryBooksSwiftDataApp.swift
//  LibraryBooksSwiftData
//
//  Created by Angelos Staboulis on 7/2/24.
//

import SwiftUI
import SwiftData

@main
struct LibraryBooksSwiftDataApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
