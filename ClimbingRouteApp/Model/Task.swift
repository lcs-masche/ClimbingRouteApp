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
    var destination: String
    

    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool, destination: String) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
        self.destination = destination
    }

}

let testData = [
    //Yellow Routes
    Task(description: "Yellow - Middle (Yellow Holds)", priority: .yellow, completed: false, destination: <#T##String#>),
    Task(description: "Yellow - Left (Light Green Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow - Right (Dark Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Orange - Right (Light Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow White - Right (Light Green Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Brown - Right (Light Green Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Blue - Right (Light Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Blue - Left (Dark Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Red - Right (Yellow Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow White - Middle (Light Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Black - Middle (Dark Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Pink - Middle (Light Grey Holds)", priority: .yellow, completed: false, destination: <#String#>),
    Task(description: "Yellow Yellow - Left (Light Green Holds)", priority: .yellow, completed: false, destination: <#String#>),
    //Green Routes
    Task(description: "Green - Middle (Yellow Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green White - Right (Dark Grey Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Yellow - Middle (Light Grey Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Green - Middle (Dark Gery Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green White - Left (Red Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Orange - Left (Dark Green Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Orange - Middle (Light Grey Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Brown - Right (Red Holds)", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Green - Right ()", priority: .green, completed: false, destination: <#String#>),
    Task(description: "Green Blue - Middle (Light Green Holds)", priority: .green, completed: false, destination: <#String#>),
    //Blue Routes
    Task(description: "Blue White - Right (Red Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue Orange - Middle (Red Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue Yellow - Left (Purple Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue Blue - Middle (Light Grey Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue Green - Middle (Yellow Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue Blue - Middle (Dark Grey Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue BLue - Middle (Light Grey Holds)", priority: .blue, completed: false, destination: <#String#>),
    Task(description: "Blue Black - Right (Yellow Holds)", priority: .blue, completed: false, destination: <#String#>),
    //Red Routes
    Task(description: "Red Red - Middle (Yellow Holds)", priority: .red, completed: false, destination: <#String#>),
    Task(description: "Red White - Middle (Light Green Holds)", priority: .red, completed: false, destination: <#String#>),
    Task(description: "Red Black - Left (Yellow Holds)", priority: .red, completed: false, destination: <#String#>),
    Task(description: "Red Red - Middle (Yellow Holds)", priority: .red, completed: false, destination: <#String#>),
    Task(description: "Red Blue - Right (Brown Holds)", priority: .red, completed: false, destination: <#String#>),
    Task(description: "Red Red - Middle (Red Holds)", priority: .red, completed: false, destination: <#String#>),
    //Black Routes
    Task(description: "Black Red - Middle (Red Holds)", priority: .black, completed: false, destination: <#String#>),
    Task(description: "Black White - Middle (Light Grey Holds)", priority: .black, completed: false, destination: <#String#>),
    Task(description: "Black Purple - Middle (Purple Holds)", priority: .black, completed: false, destination: <#String#>),
]
