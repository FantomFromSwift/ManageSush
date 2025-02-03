//
//  SushiMenuView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct SushiMenuView: View {
    @Environment(\.dismiss) private var dismiss
    //    @StateObject private var viewModel = SushiMenuViewModel()
    @State private var showAllFavorites = false
    @Binding var favoriteRolls: [Roll]
    let rolls: [Roll] = SushiMenuViewModel().rolls
    
    
    var body: some View {
        ScrollView{
            VStack {
                CustomHeaderView(
                    title: "Sushi Menu",
                    centerImage: nil,
                    rightButtonActions: [],
                    leftButtonImage: "Arrow_left 1",
                    rightButtonImages: []
                )
                .padding(.top, 70)
                
                ForEach(rolls, id: \.id) { roll in
                    NavigationLink(destination: SushiDetailsView(roll: roll, ingredients: roll.ingredients, favoriteRolls: $favoriteRolls)) {
                        SushiButtonView(roll: roll)
                            .padding(.bottom, 5)
                    }
                }
                
                
                .padding(.top, 1)
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(BackgroundView())
        .ignoresSafeArea(edges: .top)
        
        
        
        
    }
    
    private func addToFavorites(roll: Roll) {
        if !favoriteRolls.contains(where: { $0.id == roll.id }) {
            favoriteRolls.append(roll)  // Добавляем ролл в избранное
        } else {
            favoriteRolls.removeAll { $0.id == roll.id }  // Удаляем ролл из избранного
        }
    }
}

#Preview {
    SushiMenuView(favoriteRolls: .constant([Roll(title: "Philadelphia", image: "sushi1", description: "Sushi rice, nori sheets, salmon, cream cheese (Philadelphia)", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[4], SushiData.ingredients[1]])]))
}

