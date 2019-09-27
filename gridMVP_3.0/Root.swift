//
//  ContentView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 1
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedView) {
                FeedRootView().tabItem {
                    Text("Feed")
                    Image("feed")
                }.tag(1)
                GroupRootView().tabItem {
                    Text("Groups")
                    Image("groups")
                }.tag(2)
                ExploreRootView().tabItem {
                    Text("Explore")
                    Image("explore")
                }.tag(3)
                DiscoverRootView().tabItem {
                    Text("Discover")
                    Image("discover")
                }.tag(4)
                EventsRootView().tabItem {
                    Text("Events")
                    Image("events")
                }.tag(5)
            }.accentColor(Color("PurpleNurple"))
            
            ExploreButton()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
