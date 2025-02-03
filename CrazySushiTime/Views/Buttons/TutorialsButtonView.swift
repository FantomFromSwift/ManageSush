//
//  TutorialsButtonView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 01.02.2025.
//

import SwiftUI

struct TutorialsButtonView: View {
    let videoID: String
        let description: String
    var body: some View {
        
        HStack {
            EmbedFrameView(ID: videoID)
                           .frame(width: 120, height: 70) // Уменьшаем размер превью
                           .clipShape(RoundedRectangle(cornerRadius: 10))
                           
            VStack (alignment: .leading, spacing: 5){
                    Text(description)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                        }
            
            .frame(maxWidth: .infinity, alignment: .leading)
            
                
            }
            .padding()
            .frame(maxWidth: 380, minHeight: 100)
            .background(Color(red: 211/255, green: 139/255, blue: 255/255))
            .cornerRadius(15)
            .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    TutorialsButtonView(videoID: "40MiH9-FQ5w", description: "How to make ONIGIRI")
}
