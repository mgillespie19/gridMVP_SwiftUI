//
//  ContentView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var selectedView = 1
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedView) {
                FeedRootView().tabItem {
                    Text("Feed")
                    Image(systemName: "house")
                }.tag(1)
                GroupRootView(viewModel: GroupRootViewModel()).tabItem {
                    Text("Groups")
                    Image(systemName: "person.3")
                }.tag(2)
                ExploreRootView().tabItem {
                    Text("Explore")
                    Image("explore")
                }.tag(3)
                DiscoverRootView().tabItem {
                    Text("Discover")
                    Image(systemName: "map")
                }.tag(4)
                EventsRootView().tabItem {
                    Text("Events")
                    Image(systemName: "calendar")
                }.tag(5)
            }
            .accentColor(Color("PurpleNurple"))
            ExploreButton()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
