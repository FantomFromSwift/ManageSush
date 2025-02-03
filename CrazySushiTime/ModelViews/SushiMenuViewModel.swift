//
//  SushiMenuViewModel.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import Foundation

class SushiMenuViewModel: ObservableObject {
    @Published var rolls: [Roll] = [
        Roll(title: "Philadelphia", image: "sushi1", description: "Sushi rice, nori sheets, salmon, cream cheese (Philadelphia)", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[4], SushiData.ingredients[1]]),
        Roll(title: "Philadelphia eel", image: "sushi3", description: "Sushi rice, nori sheets, eel, avocado, cucumber, cream cheese (Philadelphia)", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[4], SushiData.ingredients[12], SushiData.ingredients[2], SushiData.ingredients[8]]),
        Roll(title: "California", image: "sushi2", description: "Sushi rice, nori sheets, tobico, avocado, cream cheese (Philadelphia)", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[4], SushiData.ingredients[5], SushiData.ingredients[2]]),
        Roll(title: "California Crab", image: "sushi4", description: "Sushi rice, nori sheets, sesame seeds, avocado, crab meet or imitation crab", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[6], SushiData.ingredients[7], SushiData.ingredients[2]]),
        Roll(title: "Shrimp Lux", image: "sushi5", description: "Sushi rice, nori sheets, shrimps, cream cheese (Philadelphia)", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[4], SushiData.ingredients[13]]),
        Roll(title: "Vegan", image: "sushi6", description: "Sushi rice, nori sheets, avocado, cucumber, tomato, bell peppers", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[2], SushiData.ingredients[8], SushiData.ingredients[9], SushiData.ingredients[10]]),
        Roll(title: "Salmon Maki", image: "sushi7", description: "Sushi rice, nori sheets, salmon", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[1]]),
        Roll(title: "Avocado Maki", image: "sushi8", description: "Sushi rice, nori sheets, avocado", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[2]]),
        Roll(title: "Tuna Maki", image: "sushi9", description: "Sushi rice, nori sheets, tuna", ingredients: [SushiData.ingredients[0], SushiData.ingredients[3], SushiData.ingredients[11]]),
        Roll(title: "Nigiri Salmon", image: "sushi10", description: "Sushi rice, salmon", ingredients: [SushiData.ingredients[1], SushiData.ingredients[3]]),
        Roll(title: "Nigiri Tuna", image: "sushi11", description: "Sushi rice, tuna", ingredients: [SushiData.ingredients[11], SushiData.ingredients[3]]),
        Roll(title: "Nigiri Shrimp", image: "sushi12", description: "Sushi rice, shrimp", ingredients: [SushiData.ingredients[13], SushiData.ingredients[3]])
    ]
}
