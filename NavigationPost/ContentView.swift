//
//  ContentView.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("titleOn") private var titleOn = false
    
    var body: some View {
        // tab bar with view items
        TabView() {
            InfoView(titleOn: $titleOn)
                .tabItem {
                    Label("Hello world", systemImage: "pencil.tip")
                }
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(ColorTheme())
}

