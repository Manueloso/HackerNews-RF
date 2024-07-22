//
//  StoryDetailView.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import SwiftUI
import WebKit

struct StoryDetailView: View {
    let story: HackerNewsStory
    
    var body: some View {
        WebView(url: story.url)
            .navigationTitle(story.title ?? "Story Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct WebView: UIViewRepresentable {
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString = url, let url = URL(string: urlString) {
            uiView.load(URLRequest(url: url))
        }
    }
}

