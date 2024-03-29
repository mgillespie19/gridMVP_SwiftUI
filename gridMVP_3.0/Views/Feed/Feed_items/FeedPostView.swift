//
//  FeedPost.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedPostView: View {
    @State var showingProfileView = false
    
    var profilePic: UIImage
    var userName: String
    var postContent: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .top) {
                Image(uiImage: self.profilePic)
                    .resizable()
                    .frame(width: 44, height: 44)
                    .onTapGesture {
                        self.showingProfileView.toggle()
                    }
                VStack (alignment: .leading) {
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
                
                Spacer()
            }
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
            
            Divider()
            
            Text(self.postContent)
                .font(.body)
                .padding()
        }
        .background(Color.white)
        .sheet(isPresented: $showingProfileView, onDismiss: {
            self.showingProfileView = false
            print("profile view dismissed")
        }, content: {
            ProfileView()
        })
            .padding(.bottom)
    }
}

struct FeedPostView_Previews: PreviewProvider {
    static var previews: some View {
        FeedPostView(profilePic: UIImage(named: "Profile Pic")!, userName: "Max Gillespie", postContent: "this is an example of a post you might see in your feed!")
    }
}
