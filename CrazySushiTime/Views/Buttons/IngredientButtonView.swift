//
//  IngredientButtonView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct IngredientButtonView: View {
    var ingredient: Ingredient
        
        var body: some View {
            
                VStack(alignment: .leading) { // Выравниваем текст по левому краю
                    ZStack { // Фон и изображение остаются по центру
                        Color.purple
                            .frame(width: 165, height: 140)
                            .cornerRadius(10)

                        Image(ingredient.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 160, height: 110)
                            
                    }
                    
                    Text(ingredient.name)
                        .font(.caption)
                        .foregroundColor(.black)
                        .frame(width: 165, alignment: .leading) // Текст всегда слева
                        .padding(.top, 1)
                        
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 8)
                .background(Color(red: 211/255, green: 139/255, blue: 255/255))
                .cornerRadius(10)
            
        }
    }

    #Preview {
        IngredientButtonView(ingredient: Ingredient(name: "Suchi Rice", image: "Group-2", rollImage: "", description: SushiData.ingredients[0].description))
    }
