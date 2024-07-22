//
//  StoriesViewModel.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import Foundation

enum StoryType: String {
    case topstories
    case newstories
    case beststories
}

class StoriesViewModel: ObservableObject {
    @Published var stories = [HackerNewsStory]()
    @Published var isLoading = false
    
    func fetchStories(type: StoryType) {
        isLoading = true
        HackerNewsService.shared.fetchStories(type: type.rawValue) { storyIds in
            let group = DispatchGroup()
            var fetchedStories = [HackerNewsStory]()
            
            for id in storyIds.prefix(30) { // Ho limitato a 30 storie per performance
                group.enter()
                HackerNewsService.shared.fetchStory(id: id) { story in
                    if let story = story {
                        fetchedStories.append(story)
                    }
                    group.leave()
                }
            }
            
            group.notify(queue: .main) {
                self.stories = fetchedStories
                self.isLoading = false
            }
        }
    }
}
