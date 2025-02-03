//
//  SaveCustom.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI

struct SaveCustom: View {
    @Environment(\.dismiss) private var dismiss
    @State private var rollName: String = ""
    var customRollImage: String
    @Binding var overlayImages: [String]
    var body: some View {
        ZStack {
            VStack {
//                CustomHeaderView(title: "CUSTOMIZE", leftButtonImage: "Arrow_left 1", rightButtonImage: "Favorite")
                CustomHeaderView(
                    title: "CUSTOMIZE",
                    centerImage: nil,
                    rightButtonActions: [{ print("Favorite tapped")}],
                    leftButtonImage: "Arrow_left 1",
                    rightButtonImages: ["Favorite"]
                )
                Spacer()
                
                
                ZStack{
                    Image(customRollImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .frame(maxWidth: .infinity, maxHeight: .infinity) // Растягиваем картинку по экрану
                        .clipped()
                    
                    
                    ForEach(overlayImages, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2 - 220)
                    }
                }
                Spacer()
                TextField("ENTER NAME", text: $rollName)
                    .padding()
                    .padding(.vertical, 10)
                    .font(.custom("ArialRoundedMTBold", size: 22))
                    .foregroundColor(rollName.isEmpty ? .white : .gray.opacity(0.3))
                    .background(.purple.opacity(0.3))
                    .cornerRadius(15)
                    .overlay( // Добавляем четкую фиолетовую обводку
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.purple, lineWidth: 2) // Чёткая фиолетовая обводка
                        )
                    .padding(.horizontal, 20)
                
                // Кнопка Save с фиолетовым фоном и белым текстом
                Button(action: {
                    // Действие кнопки Save будет здесь
                }) {
                    Text("Save")
                        .frame(maxWidth: .infinity, maxHeight: 80)
                        .font(.custom("ArialRoundedMTBold", size: 32))
                        .background(Color.purple) // Фиолетовый фон
                        .foregroundColor(.white) // Белый текст
                        .cornerRadius(15)
                        .padding(.horizontal, 20)
                }
            }
        }
        .background(BackgroundView())
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SaveCustom(customRollImage: "Group-19", overlayImages: .constant(["tomato", "Image2", "Image3"]))
}

