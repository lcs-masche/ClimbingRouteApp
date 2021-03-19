//
//  Task.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import Foundation

class Task: Identifiable, ObservableObject {
    
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool

    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }

}

let testData = [
    Task(description: "Climb most boulders", priority: .yellow, completed: false),
    
]
