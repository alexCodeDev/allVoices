//
//  allVoicesApp.swift
//  allVoices
//
//  Created by Aleksandr on 08/09/22.
//

import SwiftUI

@main
struct allVoicesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(audioRecorder: AudioRecorder())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
