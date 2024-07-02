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
                if let user = viewModel.user{
                    // Avatar
                    Image(systemName: "person.circle").resizable()
                                                      .aspectRatio(contentMode: .fit)
                                                      .foregroundColor(.red)
                                                      .frame(width:120, height:120)
                                                      .padding()
                    
                    //Info: Name, Email, Member Since
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Name: ").bold().padding()
                            Text(user.name)
                        }
                        HStack{
                            Text("Email: ").bold().padding()
                            Text(user.email)
                        }
                        HStack{
                            Text("Member Since: ").bold().padding()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date:.abbreviated, time: .shortened))")
                        }
                        
                    }.padding()
                    
                    
                    //SignOut
                    Button("Sign Out"){
                        viewModel.logout()
                    }.tint(.red).padding()
                             
                    Spacer()
                } else {
                    Text("Loading User ..")
                }
            }
            .navigationTitle("Profile")
        }.onAppear{
            viewModel.fetchuser()
        }
    }
}

#Preview {
    ProfileView()
}
