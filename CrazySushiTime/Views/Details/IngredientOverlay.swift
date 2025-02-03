//
//  IngredientOverlay.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI

struct IngredientOverlay: View {
    let ingredient: Ingredient
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "plus")
                .resizable()
                .scaledToFit()
                .frame(width: 5, height: 5)
                .padding(8)
                .background(Color.white)
                .clipShape(Circle())
            
        }
        .padding(12)
    }
}


