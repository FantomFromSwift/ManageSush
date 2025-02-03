//
//  SushiDetailsView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct SushiDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    var roll: Roll
    var ingredients: [Ingredient]
    @Binding var favoriteRolls: [Roll]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ZStack{
            BackgroundView()
            NavigationStack{
                ScrollView{
                    VStack {
                        CustomHeaderView(
                            title: "Let's look!",
                            centerImage: nil,
                            rightButtonActions: [{print("Taped")}, { addToFavorites(roll: roll) }],
                            leftButtonImage: "Arrow_left 1",
                            rightButtonImages: ["Bag empty", favoriteRolls.contains(where: { $0.id == roll.id }) ? "Favorite_fill" : "Favorite"]
                        )
                        .padding(.top, 70)
                        
                        VStack {
                            Image(roll.image)  // Используем свойство image из модели Roll
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .padding(.bottom, 10)  // Отступ между изображением и текстом
                            
                            Text(roll.title)  // Используем свойство title из модели Roll
                                .font(.custom("ArialRoundedMTBold", size: 34))
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 5, x: 0, y: 3)
                        }
                        .padding()
                        .frame(maxWidth: 380, minHeight: 100)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        
                        VStack {
                            LazyVGrid(columns: columns, spacing: 20) {
                                ForEach(ingredients, id: \.id) { ingredient in
                                    IngredientButtonView(ingredient: ingredient) // Ваш компонент для отображения ингредиента
                                }
                            }
                            .padding()
                            
                        }
                    }
                    .navigationBarBackButtonHidden(true)
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
    private func addToFavorites(roll: Roll) {
        if !favoriteRolls.contains(where: { $0.id == roll.id }) {
            favoriteRolls.append(roll)  // Добавляем ролл в избранное
            print("Roll edit")
        } else {
            favoriteRolls.removeAll { $0.id == roll.id }  // Удаляем ролл из избранного
            print("roll deleted")
        }
    }
}

struct SushiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        // Передаем пустой массив для favoriteRolls
        SushiDetailsView(
            roll: SushiMenuViewModel().rolls[0],
            ingredients: SushiMenuViewModel().rolls[0].ingredients,
            favoriteRolls: .constant([])  // Используем .constant для привязки
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}


