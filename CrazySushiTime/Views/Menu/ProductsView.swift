//
//  ProductsView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct ProductsView: View {
    @Environment(\.dismiss) private var dismiss
   @StateObject private var viewModel = IngredientMenuViewModel()
//    @StateObject var shoppingListViewModel = ShoppingListViewModel()
    @Binding var shoppingList: [Ingredient]
    
    let ingredients = IngredientMenuViewModel().ingredient
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        
        ScrollView{
            VStack {
                CustomHeaderView(
                    title: "INGREDIENTS",
                    centerImage: nil,
                    rightButtonActions: [{ print("Favorite tapped")}],
                    leftButtonImage: "Arrow_left 1",
                    rightButtonImages: ["Bag empty"]
                )
                .padding(.top, 70)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    
                    ForEach(ingredients, id: \.id) { ingredient in
                        NavigationLink(destination: IngredientDetailView(ingredient: ingredient,shoppingList: $shoppingList)) {
                            IngredientButtonView(ingredient: ingredient)
                        }
                    }
                }
                
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(BackgroundView())
        .ignoresSafeArea(edges: .top)
        
    }
  

}


//#Preview {
//    ProductsView(shoppingList: $shoppingList)
//}


//IngredientDetailView(ingredient: ingredient)
//destination: IngredientButtonView(ingredient: ingredient)
