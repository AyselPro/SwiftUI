//
//  InfoView.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI

struct InfoView: View {
    
    @Binding var titleOn: Bool
    
    var body: some View {
        // navigation view for master - details architecture
        NavigationView {
            // show the list of sample data
            List(Post.data) { post in
                NavigationLink {
                    // link to details view
                    InfoDetailsView(post: post)
                } label: {
                    // the view to represent one row of data with image and title
                    InfoRowView(post: post)
                }
            }
            .navigationTitle("Netology")
            .toolbar(titleOn ? .visible : .hidden, for: .navigationBar)
            .listStyle(.plain)
        }
    }
}
#Preview {
    InfoView(titleOn: .constant(true))
}
