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
    @ObservedObject var viewModel: GroupRootViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.groups) { group in
                GroupCell(groupName: group.name, image: group.image, color: group.fontColor)
                    .listRowInsets(EdgeInsets())
            }.navigationBarTitle(Text("Groups"))
        }
        .onAppear(perform: viewModel.load)
        .onDisappear(perform: viewModel.cancel)
    }
}

struct GroupRootView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRootView(viewModel: GroupRootViewModel())
    }
}
