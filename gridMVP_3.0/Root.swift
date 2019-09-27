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
        TabView(selection: $selectedView) {
            FeedRootView().tabItem {
                Text("Feed")
                Image("home")
            }.tag(1)
            
            GroupRootView().tabItem {
                Text("Groups")
                Image("chapters-active")
            }.tag(2)
        }.accentColor(Color("PurpleNurple"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
