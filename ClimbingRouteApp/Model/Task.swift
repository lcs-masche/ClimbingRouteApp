//
//  Task.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var describtion: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = [
    Task(describtion: "Climb most boulders", priority: .high, completed: true),
    Task(describtion: "Get good marks", priority: .medium, completed: false),
    Task(describtion: "Be a good student", priority: .low, completed: false),
]
