//
//  StoryViewModel .swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

class StoryViewModel: ObservableObject{
    @Published var stories: [StoryBundle] = [
        
        StoryBundle(profileName: "Наши акции", profileImage: "logo1", stories: [
            Story(imageURL: "back"),
            Story(imageURL: "back")
        ]),
        
        StoryBundle(profileName: "Вы", profileImage: "logo2", stories: [
            Story(imageURL: "back2"),
            Story(imageURL: "back2")
        ])
        
    ]
    
    // Properties
    
}
