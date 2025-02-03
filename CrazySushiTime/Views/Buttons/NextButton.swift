//
//  NextButton.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI

struct NextButton: View {
    var selectedIngredientImage: [String] // Передаем массив как параметр
    var destination: SaveCustom 
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text("Next")
            
                .font(.title2)
                .padding()
                .background(selectedIngredientImage.isEmpty ? Color.gray.opacity(0.8) : Color.purple.opacity(0.8))
                .cornerRadius(10)
                .foregroundColor(.white)
                .opacity(selectedIngredientImage.isEmpty ? 0.5 : 1)
                .disabled(selectedIngredientImage.isEmpty)
        }
    }
}
