//
//  FeedPost.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class FeedPost: Identifiable {
    let user: User
    let datePosted: Date
    let content: String
    let media: UIImage?
    
    init(PostUser: User, DatePosted: Date, Content: String) {
        self.user = PostUser
        self.datePosted = DatePosted
        self.content = Content
        self.media = nil
    }
    
    init(PostUser: User, DatePosted: Date, Content: String, Media: UIImage) {
        self.user = PostUser
        self.datePosted = DatePosted
        self.content = Content
        self.media = Media
    }
}
