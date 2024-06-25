//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import Foundation
import FirebaseAuth
class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    func login () {
        guard validate() else {
            return
        }
        
        // FIrebase Login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate () -> Bool {
        errorMessage = ""
        
        // Has User Entered Email and Password
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter your Email Address and Password"
            return false
        }
        //email@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid Email Address."
            return false
        }
        return true
        
    }
    
}


