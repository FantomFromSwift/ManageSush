//
//  ContentView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 29.01.2025.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("userName") private var savedName: String = ""
    @State private var showMainMenu = false
    @State private var showAuthView = false
    @State private var showGuideView = false

    var body: some View {
        VStack {
            if showMainMenu {
                MainMenuView()
            } else if showAuthView {
                AuthView()
            } else if showGuideView {
                GuideView()
                    .transition(.opacity) // Плавный переход для GuideView
            } else {
                LoadingView()
                    .onAppear {
                        // Сперва показываем LoadingView, затем 3 секунды после запуска GuideView
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                showGuideView = true // Показываем GuideView
                            }
                        }
                    }
            }
        }
        .onAppear {
            // Переход после GuideView
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                withAnimation {
                    if savedName.isEmpty {
                        showAuthView = true
                    } else {
                        showMainMenu = true
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
