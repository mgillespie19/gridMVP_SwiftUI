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
                FeedHeader()
                Text("feed item 2")
                Text("feed item 3")
            }
            .navigationBarTitle("Feed")
            .navigationBarItems(trailing: ProfileButton())
        }
    }
}

struct FeedRootView_Previews: PreviewProvider {
    static var previews: some View {
        FeedRootView()
    }
}