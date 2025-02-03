//
//  EmbedFrameView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI
import WebKit

struct EmbedFrameView: View {
    let ID: String
    var body: some View {
        VStack{
            HStack{
                EmbedView(videoID: ID)
                    .frame(width: 150, height: 100, alignment: .leading)
                    .cornerRadius(15)
            }
            .frame(width: 150, height: 100, alignment: .leading)
            .cornerRadius(15)
        }
        .background(
            LinearGradient(gradient: .init(colors: [Color(red: 246/255, green: 224/255, blue: 187/255), Color(red: 229/255, green: 229/255, blue: 229/255), Color(red: 229/255, green: 229/255, blue: 229/255) ]), startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    EmbedFrameView(ID: "")
}

//40MiH9-FQ5w
