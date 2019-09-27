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
        List {
            Text("Group item 1")
            Text("Group item 2")
            Text("Group item 3")
        }
    }
}

struct GroupRootView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRootView()
    }
}
