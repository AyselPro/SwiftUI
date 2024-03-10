//
//  ContentView.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // tab bar with view items
        TabView() {
            InfoView()
                .tabItem {
                    Label("SwiftUI", systemImage: "swift")
                }
            
            HelloView()
                .tabItem {
                    Label("Hello world", systemImage: "pencil.tip")
                }
            
            SettingsView()
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
