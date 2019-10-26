//
//  FeedPost.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedPost: View {
    var profilePic: UIImage
    var userName: String
    var postContent: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .bottom) {
                Image(uiImage: self.profilePic)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(self.userName)
                    .font(.title)
                    .fontWeight(.semibold)
            }
            Text(self.postContent)
                .font(.body)
        }
    }
}

struct FeedPost_Previews: PreviewProvider {
    static var previews: some View {
        FeedPost(profilePic: UIImage(named: "Profile Pic")!, userName: "Max Gillespie", postContent: "this is an example of a post you might see in your feed!")
    }
}
