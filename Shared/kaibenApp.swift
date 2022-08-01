//
//  kaibenApp.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

import SwiftUI

@main
struct kaibenApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            
            HomeView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
