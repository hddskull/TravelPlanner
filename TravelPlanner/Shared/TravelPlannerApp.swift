//
//  TravelPlannerApp.swift
//  TravelPlanner
//
//  Created by Maxim Gladkov on 10.02.2023.
//

import SwiftUI

@main
struct TravelPlannerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
