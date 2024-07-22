//
//  HackerNewsStory.swift
//  HackerNewsClient
//
//  Created by manuel on 19/07/24.
//

import Foundation

struct HackerNewsStory: Identifiable, Decodable {
    let id: Int
    let title: String?
    let url: String?
    let score: Int?
    let by: String?
    let time: Int?
    let descendants: Int?
}
