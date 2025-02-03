//
//  TestView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 31.01.2025.
//

import SwiftUI

struct ChooseCustomView: View {
    @Binding var selectedRollImage: String
    var body: some View {
        
        Image(selectedRollImage)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
        
        
        VStack(alignment: .leading){
            Text("Sushi Type:")
                .font(.custom("ArialRoundedMTBold", size: 23))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            HStack{
                Button(action: {
                    selectedRollImage = "Group-19" // Изменение на первый рол
                }) {
                    Image("Group-19")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .padding(.leading)
                        .shadow(color: .black, radius: 5, x: 0, y: 3)
                }
                Button(action: {
                    selectedRollImage = "Group-20" // Изменение на второй рол
                }) {
                    Image("Group-20")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                }
                
            }
            Text("Choose the filling:")
                .font(.custom("ArialRoundedMTBold", size: 23))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    @State static var selectedRollImage = "Group-19" // Создаем состояние для Preview
    
    static var previews: some View {
        ChooseCustomView(selectedRollImage: $selectedRollImage) // Передаем Binding в TestView
    }
}

