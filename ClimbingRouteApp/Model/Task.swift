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
