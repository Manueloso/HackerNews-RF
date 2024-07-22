//
//  TopStoriesView.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import SwiftUI

struct TopStoriesView: View {
    var body: some View {
        StoriesListView(viewModel: StoriesViewModel(), storyType: .topstories)
    }
}

