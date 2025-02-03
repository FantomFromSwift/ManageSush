//
//  SushiDetailView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct ShoppingListView: View {
    @Binding var shoppingList: [Ingredient]
    var body: some View {
        VStack {
            CustomHeaderView(
                title: "SHOPING LIST",
                centerImage: nil,
                rightButtonActions: [{ print("Favorite tapped")}],
                leftButtonImage: "Arrow_left 1",
                rightButtonImages: ["Bag_fill 3"]
            )
            .padding(.top, 0)
            ProductToBuyView(shoppingList: $shoppingList)
            
            Spacer()
            
            // Кнопка Share внизу
            ShareLink(item: getShoppingListText()) {
                Text("Export")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity) // Кнопка будет растягиваться на всю доступную ширину
                    .padding(.horizontal)
                    .background(Color.purple)
                    .cornerRadius(8)
                    
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .background(BackgroundView())
    }
    
    func getShoppingListText() -> String {
            // Собираем все названия ингредиентов в строку
            let ingredientNames = shoppingList.map { $0.name }
            return "Shopping List: \n" + ingredientNames.joined(separator: "\n")
        }
    
    func addToShoppingList(_ ingredient: Ingredient) {
        if !shoppingList.contains(where: { $0.id == ingredient.id }) {
            shoppingList.append(ingredient)
            print("product edit")
        }
    }
}

//#Preview {
//    @State var sampleShoppingList = [
//        Ingredient(id: UUID(), name: "Salmon"),
//        Ingredient(id: UUID(), name: "Rice"),
//        Ingredient(id: UUID(), name: "Nori")
//    ]
//    return ShoppingListView(shoppingList: $shoppingList)
//}

