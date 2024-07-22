//
//  HackerNewsService.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import Foundation

class HackerNewsService {
    static let shared = HackerNewsService()
    private let baseURL = "https://hacker-news.firebaseio.com/v0/"
    
    func fetchStories(type: String, completion: @escaping ([Int]) -> Void) {
        guard let url = URL(string: "\(baseURL)\(type).json") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let storyIds = try JSONDecoder().decode([Int].self, from: data)
                    DispatchQueue.main.async {
                        completion(storyIds)
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                    DispatchQueue.main.async {
                        completion([])
                    }
                }
            }
        }.resume()
    }
    
    func fetchStory(id: Int, completion: @escaping (HackerNewsStory?) -> Void) {
        guard let url = URL(string: "\(baseURL)item/\(id).json") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let story = try JSONDecoder().decode(HackerNewsStory.self, from: data)
                    DispatchQueue.main.async {
                        completion(story)
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                }
            }
        }.resume()
    }
}
