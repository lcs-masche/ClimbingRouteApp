//
//  Task.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import Foundation

enum TaskCodingKeys: CodingKey {
    case description
    case priority
    case completed
}


class Task: Identifiable, ObservableObject, Codable{
    
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

    
    // Provide details for how to decode from JSON into an instance of this data type
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TaskCodingKeys.self)

        // Decode "description" property into an instance of the String type
        self.description = try container.decode(String.self, forKey: .description)
        // Decode "priority" property into an instance of the TaskPriority type
        self.priority = try container.decode(TaskPriority.self, forKey: .priority)
        // Decode "completed" property into an instance of the Bool type
        self.completed = try container.decode(Bool.self, forKey: .completed)
    }

    // Provide details for how to encode to JSON from an instance of this type
    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: TaskCodingKeys.self)

        // Everything is encoded into String types
        try container.encode(description, forKey: .description)
        try container.encode(priority.rawValue, forKey: .priority)
        try container.encode(completed, forKey: .completed)

    }
}

let testData = [
    //Yellow Routes
    Task(description: "Yellow - Middle (Yellow Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow - Left (Light Green Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow - Right (Dark Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Orange - Right (Light Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow White - Right (Light Green Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Brown - Right (Light Green Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Blue - Right (Light Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Blue - Left (Dark Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Red - Right (Yellow Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow White - Middle (Light Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Black - Middle (Dark Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Pink - Middle (Light Grey Holds)", priority: .yellow, completed: false),
    Task(description: "Yellow Yellow - Left (Light Green Holds)", priority: .yellow, completed: false),
    //Green Routes
    Task(description: "Green - Middle (Yellow Holds)", priority: .green, completed: false),
    Task(description: "Green White - Right (Dark Grey Holds)", priority: .green, completed: false),
    Task(description: "Green Yellow - Middle (Light Grey Holds)", priority: .green, completed: false),
    Task(description: "Green Green - Middle (Dark Gery Holds)", priority: .green, completed: false),
    Task(description: "Green White - Left (Red Holds)", priority: .green, completed: false),
    Task(description: "Green Orange - Left (Dark Green Holds)", priority: .green, completed: false),
    Task(description: "Green Orange - Middle (Light Grey Holds)", priority: .green, completed: false),
    Task(description: "Green Brown - Right (Red Holds)", priority: .green, completed: false),
    Task(description: "Green Green - Right ()", priority: .green, completed: false),
    Task(description: "Green Blue - Middle (Light Green Holds)", priority: .green, completed: false),
    //Blue Routes
    Task(description: "Blue White - Right (Red Holds)", priority: .blue, completed: false),
    Task(description: "Blue Orange - Middle (Red Holds)", priority: .blue, completed: false),
    Task(description: "Blue Yellow - Left (Purple Holds)", priority: .blue, completed: false),
    Task(description: "Blue Blue - Middle (Light Grey Holds)", priority: .blue, completed: false),
    Task(description: "Blue Green - Middle (Yellow Holds)", priority: .blue, completed: false),
    Task(description: "Blue Blue - Middle (Dark Grey Holds)", priority: .blue, completed: false),
    Task(description: "Blue BLue - Middle (Light Grey Holds)", priority: .blue, completed: false),
    Task(description: "Blue Black - Right (Yellow Holds)", priority: .blue, completed: false),
    //Red Routes
    Task(description: "Red Red - Middle (Yellow Holds)", priority: .red, completed: false),
    Task(description: "Red White - Middle (Light Green Holds)", priority: .red, completed: false),
    Task(description: "Red Black - Left (Yellow Holds)", priority: .red, completed: false),
    Task(description: "Red Red - Middle (Yellow Holds)", priority: .red, completed: false),
    Task(description: "Red Blue - Right (Brown Holds)", priority: .red, completed: false),
    Task(description: "Red Red - Middle (Red Holds)", priority: .red, completed: false),
    //Black Routes
    Task(description: "Black Red - Middle (Red Holds)", priority: .black, completed: false),
    Task(description: "Black White - Middle (Light Grey Holds)", priority: .black, completed: false),
    Task(description: "Black Purple - Middle (Purple Holds)", priority: .black, completed: false),
]
