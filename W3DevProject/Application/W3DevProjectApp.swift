//
//  W3DevProjectApp.swift
//  W3DevProject
//
//  Created by Swayam Rustagi on 11/05/24.
//

import SwiftUI

@main
struct W3DevProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomePage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
