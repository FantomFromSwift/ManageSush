//
//  ProductToBuyView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 03.02.2025.
//

import SwiftUI

struct ProductToBuyView: View {
    @Binding var shoppingList: [Ingredient]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(shoppingList, id: \.id) { ingredient in
                    IngredientButtonView(ingredient: ingredient)
                        .padding()
                }
            }
        }
    }
}
    struct ProductToBuyView_Previews: PreviewProvider {
        static var previews: some View {
            ProductToBuyView(shoppingList: .constant([Ingredient(name: "Tomato", image: "tomato", rollImage: "", description: "") ]))
            
        }
}
