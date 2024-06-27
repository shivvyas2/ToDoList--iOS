//
//  ProfileView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI



struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
