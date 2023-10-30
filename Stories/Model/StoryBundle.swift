//
//  StoryBundle.swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

struct StoryBundle: Identifiable {
    var id = UUID().uuidString
    var profileName: String
    var profileImage: String
    var isSeen: Bool = false
    var stories: [Story]
}

struct Story: Identifiable {
    var id = UUID().uuidString
    var imageURL: String
}
