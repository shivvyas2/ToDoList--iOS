//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation
// View model for list of items

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        
    }
    
    /// Delete Item
    /// - Parameter id: Item Id To Delete

    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
        
    }
}
