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
            group: Group(ID: 000, n: "Xccelerate", t: "Campus Club", d: "We are a club with the intention of inspiring entrepreneurs!", fc: Color(red: 39/255, green: 91/255, blue: 196/255), i: UIImage(named: "Xccelerate_sample")!, hl: false)
        )
    }
}
