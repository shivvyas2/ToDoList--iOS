//
//  NewItemView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    var body: some View {
        VStack{
            Text("New Item").font(.system(size: 32)).bold()
            Form{
                //Title
                Text("Title", text: $viewModel.title)
                //DueDate
                
                //Button
            }
        }
    }
}

#Preview {
    NewItemView()
}
