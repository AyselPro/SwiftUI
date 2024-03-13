//
//  HelloView.swift
//  NavigationPost
//
//  Created by Aysel on 08.03.2024.
//

import SwiftUI
import SwiftData

struct HelloView: View {
    
    var body: some View {
        HStack {
            Image(systemName: "chart.bar.xaxis")
            Text("Hello world")
        }
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    return HelloView()
        .modelContainer(container)
}
