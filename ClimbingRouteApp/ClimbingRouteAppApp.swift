//
//  ClimbingRouteAppApp.swift
//  ClimbingRouteApp
//
//  Created by Mo Asche on 2021-03-18.
//

import SwiftUI

@main
struct ClimbingRouteAppApp: App {
    
    @StateObject private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
