//
//  MenuButton.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct MenuButtonView: View {
    var image: String
    let title: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            
            Text(title)
                
        }
        .font(.custom("ArialRoundedMTBold", size: 30))
        .shadow(color: .black, radius: 5, x: 0, y: 3)
        .bold()
        .frame(maxWidth: 340, minHeight: 110)
        .background(Color.purple)
        .foregroundColor(.white)
        .cornerRadius(15)
                    

    }
}

#Preview {
    MenuButtonView(image: "Example", title: "Example")
}
