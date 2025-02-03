//
//  AuthView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 29.01.2025.
//

import SwiftUI

struct AuthView: View {
    @State private var isAuth: Bool = false
    @AppStorage("userName") private var savedName: String = ""
    init() {
            if !savedName.isEmpty {
                isAuth = true
            }
        }
    
    var body: some View {
        NavigationStack {
            ZStack{
                ZStack {
                    Color(red: 138/255, green: 43/255, blue: 226/255)
                        .ignoresSafeArea()
                    Image("bg start")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .ignoresSafeArea()
                        .overlay(Color.black.opacity(0.5))
                }
                
                VStack (spacing: 20){
                    Text("What's your name?")
                        .padding()
                        .font(.custom("ArialRoundedBold", size:43))
                        .foregroundStyle(.white)
                    
                    
                    
                    
                    TextField("write...", text: $savedName)
                        .padding()
                        .padding(.vertical, 10)
                        .font(.custom("ArialRoundedMTBold", size: 22))
                        .foregroundColor(savedName.isEmpty ? .gray : .white)
                        .background(.purple)
                        .cornerRadius(15)
                        .padding(.horizontal, 40)
                    
                    
                    NavigationLink(
                        destination: MainMenuView(),
                        isActive: $isAuth 
                    ) {
                        
                        Button {
                            savedName = savedName
                            isAuth = true
                            print("Сохраненное имя:", savedName)
                        } label: {
                            Text("Save")
                                .padding()
                                .foregroundStyle(savedName.isEmpty ? .gray : .white)
                                .font(.custom("ArialRoundedMTBold", size: 27))
                                .shadow(color: .black, radius: 5, x: 0, y: 3)
                                .frame(width: 140, height: 54)
                                .background(savedName.isEmpty ? Color.green.opacity(0.5) : .green)
                                .cornerRadius(15)
                            
                        }
                        .padding(.bottom, 26)
                        .padding()
                        .disabled(savedName.isEmpty)
                        
                    }
                    
                }
            }
        }
        
    }
}

#Preview {
    AuthView()
}
