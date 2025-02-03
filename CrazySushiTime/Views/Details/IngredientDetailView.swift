//
//  IngredientDetailView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct IngredientDetailView: View {
    @Environment(\.dismiss) private var dismiss
    var ingredient : Ingredient
    @Binding var shoppingList : [Ingredient]
    
    
    

    var body: some View {
        ZStack{
            Color(red: 216/255, green: 184/255, blue: 247/255, opacity: 0.8)
                .ignoresSafeArea()
            VStack {
                CustomHeaderView(
                    title: "INGREDIENTS",
                    centerImage: nil,
                    rightButtonActions: [{addToShoppingList(ingredient)}],
                    leftButtonImage: "Arrow_left 1",
                    rightButtonImages: ["Bag empty"]
                )
                .padding(.top, -70)
                .padding(.bottom, 40)
                
                VStack(spacing: 40){
                    
                    Image(ingredient.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        
                        
                    
                    Text("\(ingredient.name) FOR SUSHI ROLLS")
                        .font(.custom("ArialRoundedMTBold", size: 28))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5, x: 0, y: 3)
                        .frame(alignment: .center)
                        
                    
                    Text(ingredient.description)
                        .font(.custom("Ambigue Pro Bold", size: 18))
                        .foregroundStyle(Color(red: 116/255, green: 57/255, blue: 150/255))
                        .padding()
                
                
                }
            }
            
                .padding(.bottom, 20)
            }
        .navigationBarBackButtonHidden(true)
        }
//    private func addToShoppingList() {
//            shoppingList.addToShoppingList(ingredient)
//        print("prod edit")
//        }
    func addToShoppingList(_ ingredient: Ingredient) {
        if !shoppingList.contains(where: { $0.id == ingredient.id }) {
            shoppingList.append(ingredient)
            print("product edit")
        }
    }

        }
        
    

#Preview {
    IngredientDetailView(ingredient: IngredientMenuViewModel().ingredient[0], shoppingList: .constant([]))
}
 
