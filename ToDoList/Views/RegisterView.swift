//
//  RegisterView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var password = ""
    @State var name = ""
    var body: some View {
        
        HeaderView(title: "Get Things Done", subtitle: "Register", backgroundColor: .orange).offset(y: 60)
        Form {
            TextField("Name", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).autocorrectionDisabled()
            TextField("Email Address", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
            SecureField("Password" , text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
            
            TLButton(title: "Register",
                     background: .blue) {
                // Login
            }.padding()
        }.padding(.bottom, 50)
    
    }
}

#Preview {
    RegisterView()
}
