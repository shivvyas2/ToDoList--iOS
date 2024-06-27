//
//  NewItemView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack{
            Text("New Item").font(.system(size: 25)).bold().padding(.top,50)
            Form{
                //Title
                TextField("Title", text: $viewModel.title).textFieldStyle(DefaultTextFieldStyle())
                
                //DueDate
                DatePicker("Due Date ", selection: $viewModel.dueDate).datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                TLButton(title: "Save", background: .red){
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    }
                    else {
                        viewModel.showAlert = true
                    }
                }.padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please Enter Correct Details"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get:{
        return true
    },set: { _ in
    }))
}
