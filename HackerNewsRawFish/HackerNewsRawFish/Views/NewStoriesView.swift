//
//  NewStoriesView.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import SwiftUI

struct NewStoriesView: View {
    var body: some View {
        StoriesListView(viewModel: StoriesViewModel(), storyType: .newstories)
    }
}
