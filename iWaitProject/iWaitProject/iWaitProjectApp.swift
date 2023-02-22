//
//  iWaitProjectApp.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 22/02/23.
//

import SwiftUI

@main
struct iWaitProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
