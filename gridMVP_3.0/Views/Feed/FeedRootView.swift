//
//  FeedRootView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedRootView: View {
    var body: some View {
        NavigationView {
            List {
                FeedHeader(viewModel: FeedHeaderViewModel())
                    .offset(y: 15)
                    .listRowInsets(EdgeInsets())
                
                FeedPostView(profilePic: UIImage(named: "Profile Pic")!, userName: "Max Gillespie", postContent: "This is an example of a post you might see! \n Cool right? \n Well I think so, so HA")
                    .listRowBackground(Color("VeryLightGrey"))
                    .listRowInsets(EdgeInsets())

                FeedPostView(profilePic: UIImage(named: "Profile Pic")!, userName: "Barack Obama", postContent: "I also think this new feed is pretty neat, but don't feel the need to go on and on about it")
                .listRowBackground(Color("VeryLightGrey"))
                .listRowInsets(EdgeInsets())
                
                FeedPostView(profilePic: UIImage(named: "Profile Pic")!, userName: "Kanye West", postContent: "Jesus is King")
                .listRowBackground(Color("VeryLightGrey"))
                .listRowInsets(EdgeInsets())
                
                FeedPostView(profilePic: UIImage(named: "Profile Pic")!, userName: "Donald Strump", postContent: "Very kuul cayne")
                .listRowBackground(Color("VeryLightGrey"))
                .listRowInsets(EdgeInsets())
                
                FeedPostView(profilePic: UIImage(named: "Profile Pic")!, userName: "Shawn White", postContent: "I'm no longer relevant")
                .listRowBackground(Color("VeryLightGrey"))
                .listRowInsets(EdgeInsets())
                
                FeedGroupRecommendationBar1(viewModel: FeedGroupRecommendationViewModel1())
                .listRowBackground(Color("VeryLightGrey"))
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("Feed")
            .navigationBarItems(trailing: ProfileButton(profilePic: UIImage(named: "Profile Pic")!))
        }
    }
}

struct FeedRootView_Previews: PreviewProvider {
    static var previews: some View {
        FeedRootView()
    }
}
