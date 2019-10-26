//
//  FeedPost.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedPost: View {
    @State var showingProfileView = false
    
    var profilePic: UIImage
    var userName: String
    var postContent: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .bottom) {
                Image(uiImage: self.profilePic)
                    .resizable()
                    .frame(width: 44, height: 44)
                    .onTapGesture {
                        self.showingProfileView.toggle()
                    }
                VStack {
                    Text(self.userName)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .onTapGesture {
                            self.showingProfileView.toggle()
                    }
                    Text("org name")
                        .font(.body)
                }
                .padding(.leading)
            }
            .padding(.top)
            Text(self.postContent)
                .font(.body)
        }.sheet(isPresented: $showingProfileView, onDismiss: {
            self.showingProfileView = false
            print("profile view dismissed")
        }, content: {
            ProfileView()
        })
    }
}

struct FeedPost_Previews: PreviewProvider {
    static var previews: some View {
        FeedPost(profilePic: UIImage(named: "Profile Pic")!, userName: "Max Gillespie", postContent: "this is an example of a post you might see in your feed!")
    }
}
