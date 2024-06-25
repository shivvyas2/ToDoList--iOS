//
//  LoginView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "ToDoList", subtitle: "Productivity 101", backgroundColor: .blue).offset(y: 50)
                
                //LoginForm
                Form {
                    TextField("Email Address", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
                    SecureField("Password" , text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                   TLButton(title: "Login",
                            background: .blue) {
                       // Login 
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
