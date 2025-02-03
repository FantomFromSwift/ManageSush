//
//  SushiData.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import Foundation

struct SushiData {
    static let ingredients: [Ingredient] = [
        Ingredient(name: "Nori Sheets", image: "Group-9", rollImage: "", description: """
    1. Calories: ~35 Kcal/1 Sheet (2-3g).
    2. Best Pairings:
    • Rice, Fish (Salmon, Tuna), Avocado, Cucumber.
    • Complements: Cream Cheese, Sesame Seeds, Spicy Mayo.
    3. Tips For Choosing:
    • Use High-Quality, Dark Green Or Black Nori For Best Flavor.
    • Ensure Nori Is Dry And Crisp;
    Avoid Damp Or Stale Sheets.
    • Lightly Toast For Extra Flavor
    Before Using.
    Nori Provides A Crispy, Savory Base For Rolls And Helps Hold Fillings Together.
    """),
        Ingredient(name: "Salmon", image: "Groop", rollImage: "salmon", description: """
    1. Calories: ~200 Kcal/100g (Raw).
    2. Best Pairings:
    • Rice, Avocado, Cucumber, Cream Cheese.
    • Complements: Tobiko, Sesame Seeds, Soy Sauce.
    3. Tips For Choosing:
    • Use Sushi-Grade Salmon For Safety And Freshness.
    • Look For Vibrant Color, Firm Texture, And A Clean Smell.
    • Keep Chilled Until Use.
    Slice Thinly For Topping Or Dice For Fillings.
    """),
        Ingredient(name: "Avocado", image: "Group-8", rollImage: "avocado", description: """
    1. Calories: ~160 Kcal/100g.
    2. Best Pairings:
    • Rice, Cucumber, Salmon, Tuna, Crab.
    • Complements: Cream Cheese, Sesame Seeds, Spicy Mayo.
    3. Tips For Choosing:
    • Choose Ripe, Slightly Soft Avocados.
    • The Skin Should Be Dark Green, Not Too Firm Or Mushy.
    • Avoid Overripe Or Brown Spots.
    Slice Thinly For Rolls Or Mash For Creamy Fillings.
    """),
        Ingredient(name: "Sushi Rice", image: "Group-2", rollImage: "", description: """
    1. Calories: ~130 Kcal/100g (Вареный).
    2. Best Pairings:
    • Fish (Salmon, Tuna, Eel), Avocado, Cucumber, Crab.
    • Complements: Nori, Sesame Seeds, Wasabi.
    3. Tips For Choosing:
    • Use Short-Grain Or Sushi Rice For The Best Texture And Stickiness.
    • Rinse Rice Thoroughly Before
    Cooking To Remove Excess Starch.
    • Season With A Mix Of Rice Vinegar, Sugar, And Salt For Authentic Flavor.
    Rice Should Be Slightly Warm When Used To Help It Bind With Other Ingredients.
    """),
        Ingredient(name: "Philadelphia", image: "Group-4", rollImage: "philadelphia", description: """
    1. Calories: 250-350 Kcal/100g.
    2. Best Pairings: Salmon, Tuna, Avocado, Cucumber, Shrimp, Roe, Greens.
    3. Tips For Choosing:
    • Look For Natural Ingredients, 25-30% Fat.
    • Ensure A Smooth, Thick Texture.
    • Alternatives: Almette, Hochland.
    • Check Freshness.
    Chill The Cheese Slightly For Easier
    Spreading.
    """),
        Ingredient(name: "Tobiko", image: "Group-11", rollImage: "tobiko", description: """
    1. Calories: ~40 Kcal/100g.
    2. Best Pairings:
    • Cream Cheese, Avocado, Cucumber.
    • Seafood: Crab, Shrimp, Salmon.
    • Toppings: Sesame Seeds, Green Onions.
    3. Tips For Choosing:
    • Choose Bright, Evenly Colored Roe (Orange, Red, Or Flavored Variants).
    • Ensure Fresh, Crisp Texture Without Excess Moisture.
    • Store Properly (Refrigerated,
    Airtight Container).
    Add Tobiko As A Topping Or Mix Into Fillings For Texture And Flavor.
    """),
        Ingredient(name: "Crab (Kani)", image: "Group-5", rollImage: "crab", description: """
    1. Calories: ~90 Kcal/100g (Real Crab),
    ~100 Kcal/100g (Imitation Crab).
    2. Best Pairings:
    • Rice, Avocado, Cucumber, Cream Cheese.
    • Complements: Tobiko, Spicy
    Mayo, Sesame Seeds.
    3. Tips For Choosing:
    • For Real Crab, Use Fresh Or Canned Lump Meat.
    • Imitation Crab (Surimi) Is Budget-Friendly And Works Well In California Rolls.
    • Check For A Fresh Smell And Moist
    Texture.
    Shred Or Chop For Fillings, Or Use Whole Sticks For Visual Appeal.
    """),
        Ingredient(name: "Sesame Seeds", image: "Group-12", rollImage: "seeds", description: """
    1. Calories: ~570 Kcal/100g.
    2. Best Pairings:
    • Rice, Nori, Avocado, Cucumber.
    • Complements: Salmon, Tuna, Eel,
    Cream Cheese.
    • Ideal For Garnishing With Unagi Or Spicy Sauces.
    3. Tips For Choosing:
    • Use Toasted Seeds For A Richer Flavor.
    • Ensure Seeds Are Fresh, Not Rancid.
    • Black Sesame Adds A Nutty, Earthy Note; White Is Milder.
    Sprinkle Over Rolls For Crunch And Aroma Or Mix Into Fillings.
    """),
        Ingredient(name: "Cucumber", image: "Group-6", rollImage: "cucumber", description: """
    1. Calories: ~16 Kcal/100g•
    2. Best Pairings:
    • Rice, Avocado, Salmon, Tuna, Crab.
    • Complements: Cream Cheese, Sesame Seeds, Spicy Mayo.
    3. Tips For Choosing:
    • Use Firm, Fresh Cucumbers With Smooth Skin.
    • Peel If Skin Is Too Thick Or Bitter.
    • Cut Into Thin, Even Strips For Easy Rolling.
    Adds Crunch And Freshness To Balance
    Richer Ingredients.
    """),
        Ingredient(name: "Tomato", image: "Group-7", rollImage: "tomato", description: """
    1. Calories: ~18 Kcal/100g.
    2. Best Pairings:
    • Avocado, Cucumber, Shrimp, Tuna.
    • Complements: Cream Cheese,
    Sesame Seeds, Basil.
    3. Tips For Choosing:
    • Use Firm, Ripe Tomatoes With A Sweet Flavor.
    • Avoid Watery Or Overripe
    Tomatoes.
    • Slice Thinly Or Dice For Fillings.
    Adds Freshness And Juiciness To Balance Other Ingredients In Rolls.
    """),
        Ingredient(name: "Bell Peper", image: "Group-10", rollImage: "peper", description: """
    1. Calories: ~20 Kcal/100g.
    2. Best Pairings:
    • Avocado, Cucumber, Tuna, Crab.
    • Complements: Cream Cheese, Sesame Seeds, Spicy Mayo.
    3. Tips For Choosing:
    • Choose Firm, Brightly Colored Peppers (Red, Yellow, Or Orange).
    • Avoid Soft Spots Or Wrinkles.
    • Slice Thinly For Easy Rolling.
    Adds Crunch And Mild Sweetness To Complement Savory Fillings.
    """),
        Ingredient(name: "Tuna", image: "Group-13", rollImage: "tuna", description: """
    1. Calories: ~130 Kcal/100g (Raw).
    2. Best Pairings:
    • Rice, Avocado, Cucumber.
    • Complements: Spicy Mayo, Sesame Seeds, Green Onions.
    3. Tips For Choosing:
    • Use Sushi-Grade Tuna; It Should Have A Deep Red Color And Fresh, Clean Smell.
    • Avoid Dry Or Dull-Looking Pieces.
    • Store Chilled Until Preparation.
    Ideal For Spicy Tuna Rolls Or Thin Slices For Topping.
    """),
        Ingredient(name: "Unagi(Eel)", image: "Group", rollImage: "eel", description: """
    1. Calories: 180-220 Kcal/100g (Depends On Preparation).
    2. Best Pairings:
    • Rice, Nori, Cucumber, Avocado.
    • Sauces: Unagi Sauce (Sweet Soy
    Glaze).
    • Toppings: Sesame Seeds, Green Onions.
    3. Tips For Choosing:
    • Look For Fresh Or High-Quality
    Pre-Grilled Unagi.
    • Ensure The Eel Is Tender And Has A Sweet, Smoky Flavor.
    • Check For Even Glazing And No
    Fishy Smell.
    Heat Slightly Before Use To Enhance Flavor And Texture.
    """),
        Ingredient(name: "Shrimp", image: "Group-14", rollImage: "shrimp", description: """
    1. Calories: ~90 Kcal/100g (Boiled
    Shrimp).
    2. Best Pairings:
    • Rice, Avocado, Cucumber, Cream Cheese.
    • Complements: Tobiko, Spicy
    Mayo, Unagi Sauce.
    3. Tips For Choosing:
    • Use Pre-Cooked Shrimp For Convenience Or Fresh For A Sweeter Taste.
    • Ensure A Firm Texture And Mild, Fresh Smell.
    • Devein And Peel Before Use.
    Slice Or Butterfly Shrimp For Even Layering In Rolls.
    """)
    ]
}
