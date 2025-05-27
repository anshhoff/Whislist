//
//  WhislistApp.swift
//  Whislist
//
//  Created by Ansh Hardaha on 27/05/25.
//

import SwiftUI
import SwiftData

@main
struct WhislistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Wish.self)
        }
    }
}
