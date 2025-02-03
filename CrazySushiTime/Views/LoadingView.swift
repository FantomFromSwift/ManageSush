//
//  LoadingView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 03.02.2025.
//

import SwiftUI

struct LoadingView: View {
    @State private var isActive = false
    @State private var size: CGFloat = 1.0
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Image("loading")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .scaleEffect(size) // Анимация приближения-отдаления
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        size = 1.1 // Чуть увеличиваем масштаб
                    }
                }
            
            Text("Loading...")
                .font(.custom("ArialRoundedBold", size: 30))
                .bold()
                .foregroundStyle(Color.white)
                .padding(.top, 650)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                        opacity = 1.0
                    }
                }
        }
    }
}

#Preview {
    LoadingView()
}
