//
//  StoriesView.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        TabView {
            TopStoriesView()
                .tabItem {
                    Label("Top", systemImage: "list.number")
                }
            
            NewStoriesView()
                .tabItem {
                    Label("New", systemImage: "list.bullet")
                }
            
            BestStoriesView()
                .tabItem {
                    Label("Best", systemImage: "star.fill")
                }
        }
    }
}


#Preview {
        StoriesView()
    }

