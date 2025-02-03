//
//  EmbedView.swift
//  CrazySushiTime
//
//  Created by Иван Непорадный on 02.02.2025.
//

import SwiftUI
import WebKit

struct EmbedView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else { return }
                uiView.scrollView.isScrollEnabled = false
                uiView.load(URLRequest(url: youtubeURL))
                
    }
}
