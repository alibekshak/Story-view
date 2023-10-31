//
//  StoryViewModel .swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

class StoryViewModel: ObservableObject{
    @Published var stories: [StoryBundle] = [
        
        StoryBundle(profileName: "Акции", profileImage: "logo1", stories: [
            Story(imageURL: "back"),
            Story(imageURL: "back3"),
        ]),
        
        StoryBundle(profileName: "Вы", profileImage: "logo2", stories: [
            Story(imageURL: "back2"),
            Story(imageURL: "back4"),
        ]),
        
        StoryBundle(profileName: "Отзывы", profileImage: "logo3", stories: [
            Story(imageURL: "back5"),
            Story(imageURL: "back6"),
        ]),
        
    ]
    
    // Properties
    @Published var showStory: Bool = false
    @Published var currontStory: String = "" 
}
