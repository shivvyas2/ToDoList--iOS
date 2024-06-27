//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import Foundation
\

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
}
