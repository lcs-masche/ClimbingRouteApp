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
    Task(description: "Climb most boulders", priority: .high, completed: true),
    Task(description: "Get good marks", priority: .medium, completed: true),
    Task(description: "Be a good student", priority: .low, completed: false),
]
