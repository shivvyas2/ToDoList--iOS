//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
        
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
