//
//  Roll.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import Foundation

struct Roll: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let image: String
    let description: String
    let ingredients: [Ingredient]
    
    static func == (lhs: Roll, rhs: Roll) -> Bool {
            lhs.id == rhs.id
        }
    
}

