//
//  InfoRowView.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI

struct InfoRowView: View {
    var post: Post
    
    var body: some View {
        HStack {
            // place an image to circle shape
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            
            Text(post.title)

            Spacer()
        }
    }
}

#Preview {
    InfoRowView(post: Post.data[0])
}

