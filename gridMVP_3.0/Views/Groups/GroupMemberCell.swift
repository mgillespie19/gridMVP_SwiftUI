//
//  GroupMemberCell.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/28/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct GroupMemberCell: View {
    var groupName: String
    
    var body: some View {
        ZStack {
            Image("xccelerate 2")
                .resizable()
                .scaledToFit()
            Text(self.groupName)
                .padding()
            
        }
        .background(Color.black)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct GroupMemberCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupMemberCell(groupName: "name")
    }
}
