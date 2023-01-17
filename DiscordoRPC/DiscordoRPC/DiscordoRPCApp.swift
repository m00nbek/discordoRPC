//
//  DiscordoRPCApp.swift
//  DiscordoRPC
//
//  Created by m00nbek Melikulov on 1/16/23.
//

import SwiftUI

@main
struct DiscordoRPCApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        UserDefaults.standard.register(defaults: ["strictMode": true, "flauntMode": false])
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
