//
//  TaskStore.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
}

let testStore = TaskStore(tasks: testData)
