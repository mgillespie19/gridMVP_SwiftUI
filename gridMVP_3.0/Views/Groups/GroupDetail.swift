//
//  GroupDetail.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/28/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct GroupDetail: View {
    var group: Group
    
    var body: some View {
        Text("Group name: \(group.name)")
    }
}

struct GroupDetail_Previews: PreviewProvider {
    static var previews: some View {
        GroupDetail(
            group: Group(ID: 000, Name: "Xccelerate", Type: "Campus Club", Description: "We are a club with the intention of inspiring entrepreneurs!", FontColor: Color(red: 39/255, green: 91/255, blue: 196/255), Image: UIImage(named: "Xccelerate_sample")!, HideLabel: false)
        )
    }
}
