//
//  LoginView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "ToDoList", subtitle: "Productivity 101", backgroundColor: .blue).offset(y: 50)
                
                //LoginForm
                
                Form {
                    // Error Message
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    // Text Field
                    TextField("Email Address", text: $viewModel.email).textFieldStyle(RoundedBorderTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
                    SecureField("Password" , text: $viewModel.password).textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    //Button
                   TLButton(title: "Login",
                            background: .blue) {
                       viewModel.login()
                   }.padding()
                }
                .offset(y: -80)
                
                
                //Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                    }.padding(.bottom, 50)
                }
                
                Spacer()
            }
        }
    }

#Preview {
    LoginView()
}
