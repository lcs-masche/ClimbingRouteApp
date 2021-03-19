//
//  ContentView.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: TaskStore
    
    
    var body: some View {
        List(store.tasks) { task in
            TaskCell(task: task)
        }
        .navigationTitle("Boulders")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
