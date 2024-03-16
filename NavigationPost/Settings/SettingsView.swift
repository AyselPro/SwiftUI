//
//  SettingsView.swift
//  NavigationPost
//
//  Created by Aysel on 08.03.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var titleOn: Bool
    
    // read actual color scheme from the environment
    @Environment(\.colorScheme) var colorScheme
    @Environment(ColorTheme.self) private var theme
    @State private var selectedTheme = ColorTheme.Theme.default

    var body: some View {
        Form {
            Section {
                Toggle("Navigation title", isOn: $titleOn.animation())
                if titleOn {
                    Text("Navigation title is enabled")
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            Section {
                // presents current light / dark mode in iOS, connected dynamically
                Text("Dark Theme enabled: ") +
                Text("\(colorScheme == .dark ? "dark mode" : "light mode")").bold()
                
                Picker("Color theme", selection: $selectedTheme.animation()) {
                    ForEach(ColorTheme.Theme.allCases, id: \.self) {
                        Text($0.rawValue).tag($0)
                    }
                }
                .pickerStyle(.segmented)
                .onChange(of: selectedTheme) {
                    theme.current = selectedTheme
                }
            }
            
            Section {
                // slider to change angle of the color gradient view bellow
                ColorGradientView()
            }
        }
    }
}

#Preview {
    SettingsView(titleOn: .constant(true))
        .environment(ColorTheme())
}

