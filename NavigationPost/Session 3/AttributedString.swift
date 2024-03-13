//
//  AttributedString.swift
//  NavigationPost
//
//  Created by Aysel on 12.03.2024.
//


import UIKit

var attributedString: NSMutableAttributedString {
    let attributes: [NSAttributedString.Key : Any] =
                    [NSAttributedString.Key.font: UIFont(name: "Papyrus", size: 30)!,
                     NSAttributedString.Key.foregroundColor: UIColor.white,
                     NSAttributedString.Key.backgroundColor: UIColor.orange
                    ]
    return NSMutableAttributedString(string: " Hello World! ", attributes: attributes)
}

