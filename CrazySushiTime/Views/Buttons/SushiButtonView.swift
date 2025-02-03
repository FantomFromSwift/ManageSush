//
//  SushiButtonView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct SushiButtonView: View {
    var roll: Roll
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(roll.title)
                    .font(.title)
                    .fontWeight(.bold)
                    
                    
                Text(roll.description)
                    .font(.system(size: 12))
                    .foregroundStyle(.black)
                    
                    
            }
            .padding([.leading, .top, .bottom])
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .multilineTextAlignment(.leading)
            
            
            
            Spacer()
            
            Image(roll.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .padding()
        }
        .frame(maxWidth: 380, minHeight: 100)
        .background(Color(red: 211/255, green: 139/255, blue: 255/255))
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

#Preview {
    SushiButtonView(roll: Roll(title: "Example Roll", image: "sushi1", description: "Delicious roll with salmon and avocado.", ingredients: [SushiData.ingredients[0], SushiData.ingredients[2]]))
}

