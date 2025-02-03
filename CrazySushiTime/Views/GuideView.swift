//
//  GuideView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 03.02.2025.
//



import SwiftUI

struct GuideView: View {
    @State private var opacity: Double = 0.0 // Начальная прозрачность
    @State private var currentImageSet: Int = 1 // Переменная для отслеживания текущего набора картинок
    
    // Массив с картинками суши, где 4 одинаковые и 3 разные
    let imageNames: [String] = [
        "sushi1", "sushi1", "sushi1", "sushi1", // 4 одинаковых картинки
        "Group-21", "Group-22", "Group-23" // 3 разные картинки
    ]
    
    // Массив координат для размещения картинок
    let imagePositions: [CGPoint] = [
        CGPoint(x: 270, y: 100),
        CGPoint(x: 510, y: 490),
        CGPoint(x: 530, y: 260),
        CGPoint(x: 250, y: 450),
        CGPoint(x: 300, y: 250),
        CGPoint(x: 430, y: 370),
        CGPoint(x: 450, y: 155)
    ]
    
    var body: some View {
        ZStack {
            // Основное фоновое изображение
            Image("6221 1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                // Изображения в зависимости от текущего набора
                if currentImageSet == 1 {
                    Image("Start-a-party-28-12-2024 1")
                        .resizable()
                        .frame(width: 380, height: 150)
                        .scaledToFit()
                        .shadow(color: .white, radius: 30)
                        .opacity(opacity) // Применение анимации прозрачности
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                opacity = 1.0 // Постепенно увеличиваем прозрачность
                            }
                        }
                    Image("handsome-man-with-sequin-jacket-making-silence-gesture 2")
                        .resizable()
                        .scaledToFit()
                        .padding(.trailing, 40)
                        .ignoresSafeArea()
                        .opacity(opacity) // Применение анимации прозрачности
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0).delay(0.5)) {
                                opacity = 1.0 // Постепенно увеличиваем прозрачность
                            }
                        }
                } else if currentImageSet == 2 {
                    // Второй набор картинок с 7 маленькими изображениями
                    VStack {
                        Image("make-make-make-sushi-28-12-2024 1")
                            .resizable()
                            .frame(width: 380, height: 150)
                            .scaledToFit()
                            .shadow(color: .white, radius: 30)
                            .opacity(opacity) // Применение анимации прозрачности
                            .onAppear {
                                withAnimation(.easeIn(duration: 1.0)) {
                                    opacity = 1.0 // Постепенно увеличиваем прозрачность
                                }
                            }
                        ZStack {
                            // Добавление 7 маленьких картинок в разных местах
                            ForEach(0..<7, id: \.self) { index in
                                Image(imageNames[index]) // Изображения из массива
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .position(imagePositions[index]) // Позиция картинок по массиву
                                    .shadow(color: .white, radius: 10)
                                    .opacity(opacity) // Применение анимации прозрачности
                                    .onAppear {
                                        withAnimation(.easeIn(duration: 1.0).delay(Double(index) * 0.2)) {
                                            opacity = 1.0 // Постепенно увеличиваем прозрачность
                                        }
                                    }
                            }
                        }
                    }
                } else if currentImageSet == 3 {
                    // Третий набор картинок
                    Image("SURPRISE-YOUR-FAMILY-WITH-28-12-2024 1")
                        .resizable()
                        .frame(width: 380, height: 150)
                        .scaledToFit()
                        .padding(.trailing, 20)
                        .shadow(color: .white, radius: 30)
                        .opacity(opacity) // Применение анимации прозрачности
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                opacity = 1.0 // Постепенно увеличиваем прозрачность
                            }
                        }
                    Image("LOGO")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding(.bottom, 340)
                        .offset(x: -10, y: 40)
                        .ignoresSafeArea()
                        .opacity(opacity) // Применение анимации прозрачности
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                opacity = 1.0 // Постепенно увеличиваем прозрачность
                            }
                        }
                }
            }
        }
        .onAppear {
            // Запуск таймера для изменения картинок с дополнительной задержкой
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.currentImageSet = 2 // Переход ко второму набору картинок через 2 секунды
            }
    
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.currentImageSet = 3 // Переход к третьему набору картинок через 5 секунд
            }
        }
    }
}

#Preview {
    GuideView()
}

