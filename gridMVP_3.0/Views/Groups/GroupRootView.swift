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
//    @ObservedObject
    
    var body: some View {
        NavigationView {
            List(groups) { group in
                GroupCell(groupName: group.name, imageName: "xccelerate 2", color: group.fontColor)
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
