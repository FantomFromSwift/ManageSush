//
//  IngredientsViewModel.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 01.02.2025.
//

import Foundation

class IngredientMenuViewModel: ObservableObject {
    @Published var ingredient: [Ingredient] = [
        Ingredient(name: "Nori Sheets", image: "Group-9", rollImage: "", description: SushiData.ingredients[0].description),
        Ingredient(name: "Salmon", image: "Groop", rollImage: "salmon", description: SushiData.ingredients[1].description),
        Ingredient(name: "Avocado", image: "Group-8", rollImage: "avocado", description:SushiData.ingredients[2].description),
        Ingredient(name: "Sushi Rice", image: "Group-2", rollImage: "", description: SushiData.ingredients[3].description),
        Ingredient(name: "Philadelphia", image: "Group-4", rollImage: "philadelphia", description: SushiData.ingredients[4].description),
        Ingredient(name: "Tobiko", image: "Group-11", rollImage: "tobiko", description: SushiData.ingredients[5].description),
        Ingredient(name: "Crab (Kani)", image: "Group-5", rollImage: "crab", description: SushiData.ingredients[6].description),
        Ingredient(name: "Sesame Seeds", image: "Group-12", rollImage: "seeds", description: SushiData.ingredients[7].description),
        Ingredient(name: "Cucumber", image: "Group-6", rollImage: "cucumber", description: SushiData.ingredients[8].description),
        Ingredient(name: "Tomato", image: "Group-7", rollImage: "tomato", description: SushiData.ingredients[9].description),
        Ingredient(name: "Bell Peper", image: "Group-10", rollImage: "peper", description: SushiData.ingredients[10].description),
        Ingredient(name: "Tuna", image: "Group-13", rollImage: "tuna", description: SushiData.ingredients[11].description),
        Ingredient(name: "Unagi(Eel)", image: "Group", rollImage: "eel", description: SushiData.ingredients[12].description),
        Ingredient(name: "Shrimp", image: "Group-14", rollImage: "shrimp", description: SushiData.ingredients[13].description)
    ]
    @Published var selectedIngredientImage: [String] = []
}
