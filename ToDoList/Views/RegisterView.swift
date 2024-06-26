//
//  RegisterView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct RegisterView: View {
   @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        
        HeaderView(title: "Get Things Done", subtitle: "Register", backgroundColor: .orange).offset(y: 60)
        Form {
            TextField("Name", text: $viewModel.name).textFieldStyle(RoundedBorderTextFieldStyle()).autocorrectionDisabled()
            TextField("Email Address", text: $viewModel.email).textFieldStyle(RoundedBorderTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
            SecureField("Password" , text: $viewModel.password).textFieldStyle(RoundedBorderTextFieldStyle())
            
            TLButton(title: "Register",
                     background: .blue) {
                viewModel.register()
            }.padding()
        }.padding(.bottom, 50)
    
    }
}

#Preview {
    RegisterView()
}
