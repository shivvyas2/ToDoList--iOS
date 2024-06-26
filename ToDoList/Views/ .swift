//
//  ContentView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            // signed In
            ToDoListView()
            
        }else {
           LoginView()
        }
       
    }
}

#Preview {
    MainView()
}
 
