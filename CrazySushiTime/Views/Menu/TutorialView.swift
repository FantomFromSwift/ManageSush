//
//  TutorialView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 30.01.2025.
//

import SwiftUI
import WebKit

struct TutorialView: View {
    @Environment(\.dismiss) private var dismiss
    let videoData: [(id: String, description: String)] = [
            ("40MiH9-FQ5w", "How to roll sushi by The Sushi Man"),
            ("3sWovLoeDaI", "How to cut avocado for sushi"),
            ("iAeH_ZwuJug", "How to cut cucmber for sushi"),
            ("z9j6_vLt8PY", "The BEST spicy Majo Recipe"),
            ("ViSLOJaVDNw", "How to make MISO SOUP"),
            ("tJ1r1Ei-DF8", "How to make ONIGIRI"),
            ("gZs0sj39Y_Y", "How to make sushi rice")
        ]
    

    var body: some View {
        ScrollView{
            VStack{
                CustomHeaderView(
                    title: "TUTORIAL",
                    centerImage: nil,
                    rightButtonActions: [],
                    leftButtonImage: "Arrow_left 1",
                    rightButtonImages: []
                )
                
                VStack(spacing: 10) {
                    ForEach(videoData, id: \.id) { item in
                        TutorialsButtonView(videoID: item.id, description: item.description)
                    }
                }
                .padding()
                
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(BackgroundView())
        
    }
}

#Preview {
    TutorialView()
}
