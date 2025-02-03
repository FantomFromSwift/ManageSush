//
//  MainMenu.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 29.01.2025.
//

import SwiftUI

struct MainMenuView: View {
    @AppStorage("userName") private var userName: String = "Guest"
    @State private var newUserName: String = ""
    @State private var isEditing: Bool = false
    @State private var favoriteRolls: [Roll] = []
    @State private var showAllFavorites = false
    @StateObject private var shoppingListViewModel = ShoppingListViewModel()
    let rolls: [Roll] = SushiMenuViewModel().rolls
    @State private var navigateToNextView = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack {
                    CustomHeaderView(
                        title: "",
                        centerImage: "LOGO",
                        leftButtonAction: { navigateToNextView.toggle() },
                        rightButtonActions: [{ print("Left Button Tapped") }],
                        leftButtonImage: "Menu",
                        rightButtonImages: ["Bag_fill 3"]
                    )
                    .padding(.bottom, 35)
                    .padding(.top, 40)
                    
                    Text("Hello, \(userName)")
                        .font(.custom("ArialRoundedMTBold", size: 25))
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 5, x: 0, y: 3)
                        .bold()
                        .padding(.bottom, -30)
                    
                    ScrollView {
                        VStack(spacing: 5) {
                            NavigationLink(destination: SushiMenuView(favoriteRolls: $favoriteRolls)) {
                                MenuButtonView(image: "Group-16", title: "SUSHI MENU")
                            }
                            NavigationLink(destination: CustomizeView()) {
                                MenuButtonView(image: "Group-15", title: "CUSTOMIZE")
                            }
                            NavigationLink(destination: TutorialView()) {
                                MenuButtonView(image: "Group-17", title: "TUTORIALS")
                            }
                            NavigationLink(destination: ProductsView(shoppingList: $shoppingListViewModel.shoppingList)) {
                                MenuButtonView(image: "Group-18", title: "PRODUCTS")
                            }
                            NavigationLink(destination: ShoppingListView(shoppingList: $shoppingListViewModel.shoppingList)) {
                                MenuButtonView(image: "Bag_fill 3", title: "SHOPPING LIST")
                            }
                        }
                        .frame(maxHeight: 4 * 200)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    }
                    
                    FavoritesSectionView(favoriteItems: $favoriteRolls, showAllFavorites: $showAllFavorites)
                        .padding(.bottom, 40)
                }
            }
            .navigationBarBackButtonHidden(true)
            .sheet(isPresented: $showAllFavorites) {
                VStack {
                    Text("Favorites List")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    ScrollView {
                        VStack {
                            if favoriteRolls.isEmpty {
                                Text("No items available")
                                    .foregroundColor(.gray)
                                    .italic()
                            } else {
                                ForEach(favoriteRolls, id: \ .id) { roll in
                                    SushiButtonView(roll: roll)
                                        .padding(.bottom, 5)
                                }
                            }
                        }
                    }
                }
            }
        }
        .overlay(
            Group {
                if navigateToNextView {
                    ZStack {
                        SettingsView(userName: $userName, newUserName: $newUserName, isEditing: $isEditing)
                            .frame(width: 350, height: 220)
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                            .shadow(radius: 10)
                            .offset(y: -200)
                    }
                }
            }
        )
    }
    
    private func addToFavorites(roll: Roll) {
        if !favoriteRolls.contains(where: { $0.id == roll.id }) {
            favoriteRolls.append(roll)
        } else {
            favoriteRolls.removeAll { $0.id == roll.id }
        }
    }
}

#Preview {
    MainMenuView()
}
