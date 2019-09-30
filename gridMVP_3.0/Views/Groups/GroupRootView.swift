//
//  GroupRootView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI
import Foundation

struct GroupRootView: View {
    var body: some View {
        NavigationView {
            List(groups) { group in
                GroupMemberCell(groupName: group.name)
                    .listRowInsets(EdgeInsets())
            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct GroupRootView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRootView()
    }
}
