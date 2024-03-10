//
//  CourseCell.swift
//  NavigationPost
//
//  Created by Aysel on 08.03.2024.
//

import SwiftData

typealias CourseKeyword = String

@Model
class CourseCell {
    var title: String
    var keywords: [CourseKeyword]

    init(title: String, keywords: [CourseKeyword]) {
        self.title = title
        self.keywords = keywords
    }
}
