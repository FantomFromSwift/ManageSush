//
//  Ingredient.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let rollImage: String
    let description: String
    
}
