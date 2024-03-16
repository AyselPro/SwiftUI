//
//  InfoRowView.swift
//  NavigationPost
//
//  Created by Aysel on 06.03.2024.
//

import SwiftUI

struct InfoRowView: View {
    var post: Post
    
    @GestureState private var isSelected = false
    
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
        .animation(
            .easeInOut(duration: 0.3),
            body: { content in
                content.scaleEffect(isSelected ? 0.96 : 1)
            }
        )
        .gesture(
            LongPressGesture(minimumDuration: 0.2)
                .updating(
                    $isSelected,
                    body: { value, state, _ in
                        state = value
                    }
                )
        )
    }
}

#Preview {
    InfoRowView(post: Post.data[0])
}

