//
//  UIKitView.swift
//  NavigationPost
//
//  Created by Aysel on 12.03.2024.
//

import SwiftUI

struct UIKitView: View {
    
    @State var text = attributedString
    
    var body: some View {
        TextView(text: $text)
    }
}

#Preview {
    UIKitView()
}


struct TextView: UIViewRepresentable {
    
    @Binding var text: NSMutableAttributedString
    
    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}

