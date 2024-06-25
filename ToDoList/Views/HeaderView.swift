//
//  HeaderView.swift
//  ToDoList
//
//  Created by Shiv Vyas on 6/24/24.
//

import SwiftUI

struct HeaderView: View {
    let title : String
    let subtitle : String
    let backgroundColor: Color
    
    
    var body: some View {
           ZStack{
            RoundedRectangle(cornerRadius: 40)
                //.offset(y: -70)
                .foregroundColor(backgroundColor)
            VStack{
                Text(title)
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
            }
           }.frame(width: UIScreen.main.bounds.width, height: 350).offset(y: -200)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", backgroundColor: .blue)
}
