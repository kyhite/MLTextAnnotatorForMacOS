//
//  TextAnnotatorMacApp.swift
//  TextAnnotatorMac
//
//  Created by Kyana Burhite on 12/31/22.
//

import SwiftUI

@main
struct TextAnnotatorMacApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
