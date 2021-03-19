//
//  TaskCell.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import SwiftUI

struct TaskCell: View {
    
    @ObservedObject var task: Task
    
    var taskColor: Color {
        switch task.priority {
        case .yellow:
            return Color.yellow
        case .green:
            return Color.green
        case .blue:
            return Color.blue
        case .red:
            return Color.red
        case .black:
            return Color.primary
        case .custom:
            return Color.primary
        }
    }
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {

                    task.completed.toggle()

                }
            
            Text(task.description)
        }
        .foregroundColor(self.taskColor)
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
    }
}

