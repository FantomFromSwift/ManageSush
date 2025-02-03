//
//  ShoppingListViewModel.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 03.02.2025.
//

import Foundation
class ShoppingListViewModel: ObservableObject {
    @Published var shoppingList: [Ingredient] = []
    
    func addToShoppingList(_ ingredient: Ingredient) {
        if !shoppingList.contains(where: { $0.id == ingredient.id }) {
            shoppingList.append(ingredient)
            print("product edit")
        }
    }
    
    func removeFromShoppingList(_ ingredient: Ingredient) {
        shoppingList.removeAll { $0.name == ingredient.name }
    }
    
    func clearShoppingList() {
        shoppingList.removeAll()
    }
}
