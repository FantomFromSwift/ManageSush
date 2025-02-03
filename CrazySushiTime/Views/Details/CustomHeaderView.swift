//
//  CustomHeaderView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI

struct CustomHeaderView: View {
    @Environment(\.dismiss) private var dismiss
    var title: String
    var centerImage: String?
    var leftButtonAction: (() -> Void)?
    var rightButtonActions: [(() -> Void)]
    var leftButtonImage: String?
    var rightButtonImages: [String]
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                let leftButtonWidth = leftButtonImage != nil ? CGFloat(44) : 0
                let rightButtonWidth = CGFloat(rightButtonImages.count) * 44
                let maxButtonWidth = max(leftButtonWidth, rightButtonWidth)

                // Левая кнопка
                HStack {
                    if let leftButtonImage = leftButtonImage {
                        Button(action: {
                            leftButtonAction?() ?? dismiss()
                        }) {
                            Image(leftButtonImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .padding(12)
                                .background(Color.purple.opacity(0.7))
                                .clipShape(Circle())
                                
                        }
                    }
                }
                .frame(width: maxButtonWidth, alignment: .leading) // Выравнивание левой группы кнопок

                // Центральный элемент
                Spacer(minLength: 0)
                Group {
                    if let centerImage = centerImage {
                        Image(centerImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 160, height: 100)
                    } else {
                        Text(title)
                            .font(.custom("ArialRoundedMTBold", size: 32))
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 5, x: 0, y: 3)
                    }
                }
//                .frame(width: geometry.size.width - 2 * maxButtonWidth, alignment: .center)
                .frame(width: max(geometry.size.width - 2 * maxButtonWidth, 0), alignment: .center)
                Spacer(minLength: 0)

                // Правая группа кнопок
                HStack {
                    ForEach(0..<rightButtonActions.count, id: \.self) { index in
                        Button(action: {
                            rightButtonActions[index]()
                            
                        }) {
                            Image(rightButtonImages[index])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 40)
                                .padding(2)
                                
                                .clipShape(Circle())
                        }
                    }
                }
                .frame(width: maxButtonWidth, alignment: .trailing) // Выравнивание правой группы кнопок
            }
        }
        .frame(height: 60)
        .padding(.horizontal, 16)
    }
}


//#Preview {
//    
//        
//        VStack{
//            CustomHeaderView(
//                title: "Example",
//                centerImage: nil,
//                rightButtonActions: [{ print("Favorite tapped") }, { print("Share tapped") }],
//                leftButtonImage: "Arrow_left 1",
//                rightButtonImages: ["Favorite", "Bag empty"]
//            )
//            
//            CustomHeaderView(
//                title: "Only Right",
//                centerImage: nil,
//                rightButtonActions: [{ print("Favorite tapped") }],
//                leftButtonImage: nil,
//                rightButtonImages: ["Favorite"]
//            )
//            
//            CustomHeaderView(
//                title: "Only Left",
//                centerImage: nil,
//                rightButtonActions: [],
//                leftButtonImage: "Arrow_left 1",
//                rightButtonImages: []
//            )
//            
//            CustomHeaderView(
//                title: "More Left",
//                centerImage: nil,
//                rightButtonActions: [{ print("Favorite tapped") }],
//                leftButtonImage: "Arrow_left 1",
//                rightButtonImages: ["Favorite"]
//            )
//        }
//        .ignoresSafeArea()
//        .background(Color.black)
////    .ignoresSafeArea()
//}


