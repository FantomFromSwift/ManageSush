//
//  ConfirmButton.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI

struct ConfirmButton: View {
    var selectedIngredientImage: [String] // Передаем массив как параметр
    var onDeleteAction: () -> Void // Передаем замыкание для действия очистки массив
    var body: some View {
        Button(action: {
            onDeleteAction() // Выполняем действие при нажатии
        }) {
            Text("Clear")
                .font(.title2)
                
                .padding()
                .background(selectedIngredientImage.isEmpty ? Color.gray.opacity(0.8) : Color.purple.opacity(0.8))
                .cornerRadius(10)
                .foregroundColor(.white)
                .opacity(selectedIngredientImage.isEmpty ? 0.5 : 1)
                .disabled(selectedIngredientImage.isEmpty)
        }
//        .padding(.horizontal)
        
    }
}


