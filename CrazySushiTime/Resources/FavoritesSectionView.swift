//
//  FavoritesSectionView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 03.02.2025.
//

import SwiftUI

struct FavoritesSectionView: View {
    @Binding var favoriteItems: [Roll]
    @Binding var showAllFavorites: Bool
    
    var body: some View {
        VStack {
            // Section header для Favorites
            HStack {
                HStack {
                    Image(systemName: "heart.fill")  // Сердечко
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5, x: 0, y: 3)
                    Text("Favorites")
                        .font(.custom("ArialRoundedMTBold", size: 32))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5, x: 0, y: 3)
                }
                .padding(.leading)
                
                Spacer()
                
                Button(action: {
                    showAllFavorites.toggle()
                }) {
                    Text("See all")
                        .font(.body)
                        .foregroundColor(.purple)
                }
                .padding(.trailing)
            }
            .padding(.bottom, 10)
            
            // Показать "No items", если список пуст
            if favoriteItems.isEmpty {
                Text("No items")
                    .foregroundColor(.white)
                    .padding()
            } else {
                ScrollView {
                    VStack {
                        ForEach(favoriteItems, id: \.id) { roll in
                            SushiButtonView(roll: roll) // Используем SushiButtonView для каждого избранного ролла
                                .padding(.bottom, 5)
                        }
                    }
                }
                .padding(.bottom, 25)
            }
        }
    }
}

struct FavoritesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        // Пример с несколькими любимыми элементами
        FavoritesSectionView(
            favoriteItems: .constant([
                Roll(title: "Sushi Roll 1", image: "sushi1", description: "Delicious sushi roll", ingredients: [])
            ]),
            showAllFavorites: .constant(false)
        )
        .previewLayout(.sizeThatFits)
        .padding()
        
        // Пример с пустым списком
        FavoritesSectionView(
            favoriteItems: .constant([]),
            showAllFavorites: .constant(false)
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
