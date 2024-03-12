//
//  NavigationPostApp.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI
import SwiftData

@main
struct NavigationPostApp: App {
    var body: some Scene {
        WindowGroup {
           AppStateView()
        }
        .modelContainer(DataController.container())
    }
}
