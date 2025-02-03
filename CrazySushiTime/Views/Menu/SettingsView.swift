//
//  SettingsView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 03.02.2025.
//

import SwiftUI

struct SettingsView: View {
    @Binding var userName: String
    @Binding var newUserName: String
    @Binding var isEditing: Bool
    
    var body: some View {
        ZStack{
            Color(.white)
        VStack {
            HStack {
                Button(action: {
                    isEditing = true  // Включаем режим редактирования
                    newUserName = userName  // Вставляем текущее имя в поле ввода
                }) {
                    Text("Username")
                        .font(.custom("ArialRoundedMTBold", size: 25))
                        .foregroundColor(.purple)
                        .padding()
                }
                
                if isEditing {
                    TextField("", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .frame(width: 200)
                    
                    Button(action: {
                        if !newUserName.isEmpty {
                            userName = newUserName
                            isEditing = false  // Закрыть редактирование
                        }
                    }) {
                        Image(systemName: "heart.fill")  // Это будет маленькая кнопка "Сохранить"
                            .foregroundColor(.purple)
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                }
            }
            Divider()
            Link("Terms of use", destination: URL(string: "https://visionsprint.xyz/crazysushitimeapp")!)
                .padding()
                .foregroundColor(.purple)
                .font(.custom("ArialRoundedMTBold", size: 25))
            Divider()
            // Кнопка для перехода по второй ссылке
            Link("Privacy Policy", destination: URL(string: "https://mobiledreams.xyz/crazysushitime")!)
                .padding()
                .foregroundColor(.purple)
                .font(.custom("ArialRoundedMTBold", size: 25))
            
            Spacer()
        }
        .padding()
    }
}
}


//#Preview {
//    SettingsView(userName: .constant("Guest"), newUserName: .constant(""), isEditing: .constant(false))
//}
