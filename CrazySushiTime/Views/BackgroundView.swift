//
//  Background.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
            ZStack{
                Color(red: 138/255, green: 43/255, blue: 226/255)
                    .ignoresSafeArea()
                Image("bg start")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                
            } .opacity(0.2)
        
    }
}

#Preview {
    BackgroundView()
}
