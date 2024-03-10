//
//  DataController.swift
//  NavigationPost
//
//  Created by Aysel on 08.03.2024.
//

import SwiftData

@MainActor
class DataController {
    
    static func container(inMemory: Bool = false) -> ModelContainer {
        do {
            let config = ModelConfiguration(isStoredInMemoryOnly: inMemory)
            let container = try ModelContainer(for: CoursePart.self, configurations: config)
            
            var itemFetchDescriptor = FetchDescriptor<CoursePart>()
            itemFetchDescriptor.fetchLimit = 1
            
            guard try container.mainContext.fetch(itemFetchDescriptor).count == 0 else {
                return container
            }
            
            return container
        } catch {
            fatalError("Failed to create SwiftData container")
        }
    }
    
    static var previewCourse: [CoursePart] {
        do {
            let container = DataController.container(inMemory: true)
            let fetchDescriptor = FetchDescriptor<CoursePart>()
            return try container.mainContext.fetch(fetchDescriptor)
        } catch {
            fatalError("Failed to fetch data from data container")
        }
    }
    
    static var previewCoursePart: CoursePart {
        return previewCourse[0]
    }
    
}
