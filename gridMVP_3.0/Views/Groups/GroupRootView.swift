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
    
    @State var showGroupDetail = false
    @State var selectedGroup: Group?
    
    var body: some View {
        NavigationView {
            List(viewModel.groups) { group in
                GroupCell(groupName: group.name, image: group.image, color: group.fontColor)
                    .listRowInsets(EdgeInsets())
                    .onTapGesture {
                        self.showGroupDetail.toggle()
                        self.selectedGroup = group
                    }
            }.navigationBarTitle(Text("Groups"))
        }
        .onAppear(perform: viewModel.load)
        .onDisappear(perform: viewModel.cancel)
        .sheet(isPresented: $showGroupDetail, content: {
            GroupDetail(group: self.selectedGroup ?? Group(ID: 0, Name: "ERROR", Type: "error", Description: "this group did not load correctly", FontColor: Color.black, Image: UIImage(named: "Xccelerate 2")!, HideLabel: false))
        })
    }
}

struct GroupRootView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRootView(viewModel: GroupRootViewModel())
    }
}
