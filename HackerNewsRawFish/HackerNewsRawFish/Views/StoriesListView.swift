//
//  StoriesListView.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import SwiftUI

struct StoriesListView: View {
    @ObservedObject var viewModel: StoriesViewModel
    let storyType: StoryType
    
    var body: some View {
        NavigationView {
            List(viewModel.stories) { story in
                NavigationLink(destination: StoryDetailView(story: story)) {
                    VStack(alignment: .leading) {
                        Text(story.title ?? "No Title")
                            .font(.headline)
                        Text("by \(story.by ?? "Unknown")")
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle(storyType == .topstories ? "Top Stories" : storyType == .newstories ? "New Stories" : "Best Stories")
            .onAppear {
                viewModel.fetchStories(type: storyType)
            }
            .refreshable {
                viewModel.fetchStories(type: storyType)
            }
        }
    }
}

#Preview {
    StoriesListView(viewModel: StoriesViewModel(), storyType: .topstories)
}

