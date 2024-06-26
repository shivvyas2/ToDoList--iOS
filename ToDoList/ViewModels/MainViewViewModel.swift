//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler:  AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener{
            [weak self] _,user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
            
        } // Whenever the user sign in or sign out the  @Published var currentUserId: String = "" will be triggered
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
