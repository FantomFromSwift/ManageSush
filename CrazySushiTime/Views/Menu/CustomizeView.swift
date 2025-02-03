//
//  CustomizeView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct CustomizeView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedRollImage: String = "Group-19"
    @State private var overlayImages: [String] = [] // Массив с наложенными изображениями
    @StateObject private var viewModel = IngredientMenuViewModel()
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            VStack {
                CustomHeaderView(
                    title: "CUSTOMIZE",
                    centerImage: nil,
                    rightButtonActions: [{ print("Favorite tapped")}],
                    leftButtonImage: "Arrow_left 1",
                    rightButtonImages: ["Favorite"]
                )
                
                ChooseCustomView(selectedRollImage: $selectedRollImage)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        let filteredIngredients = viewModel.ingredient.filter { $0.image != "Group-9" && $0.image != "Group-2" }
                        ForEach(filteredIngredients, id: \.image) { ingredient in
                            IngredientButtonView(ingredient: ingredient)
                                .overlay(
                                    IngredientOverlay(ingredient: ingredient) {
                                        viewModel.selectedIngredientImage.append(ingredient.rollImage)
                                        overlayImages.append(ingredient.rollImage)
                                    },
                                    alignment: .topTrailing
                                )
                        }
                    }
                }
                
                Spacer()
                
                // Используем вынесенную кнопку с действием очистки массива
                HStack {
                    // Кнопка Clear
                    ConfirmButton(selectedIngredientImage: viewModel.selectedIngredientImage) {
                        viewModel.selectedIngredientImage.removeAll()
                        overlayImages.removeAll()// Очистка массива
                    }
                    .frame(width: 150) // Ширина кнопки
                    .padding(.leading) // Отступ слева
                    
                    // Кнопка Next
                    NextButton(selectedIngredientImage: viewModel.selectedIngredientImage, destination: SaveCustom(customRollImage: selectedRollImage, overlayImages: $overlayImages))
                        .frame(width: 150) 
                        .padding(.trailing)
                }
                
            }
            
            // Отображение выбранных ингредиентов
            ForEach(viewModel.selectedIngredientImage, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .offset(x: 0, y: -250)
            }
            
            ForEach(overlayImages, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .offset(x: 0, y: -250) // Позиционирование картинок
            }
            
            
            
        }
        .background(BackgroundView())
        .navigationBarBackButtonHidden(true)
        .onAppear {
            // Сбрасываем данные при возвращении на экран
            viewModel.selectedIngredientImage.removeAll()
            overlayImages.removeAll()
        }
    }
}

#Preview {
    CustomizeView()
}
