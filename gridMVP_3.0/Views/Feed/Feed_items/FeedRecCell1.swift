//
//  FeedRecCell1.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedRecCell1: View {
    var groupName: String
    var fontColor: Color
    var groupImage: UIImage
    
    var body: some View {
        ZStack {
            Image(uiImage: self.groupImage)
                .resizable()
                .frame(width: 100, height: 100)
            Text(self.groupName)
                .foregroundColor(self.fontColor)
        }
        .padding()
        .frame(width: 100, height: 100)
        .cornerRadius(24)
    }
}

struct FeedRecCell1_Previews: PreviewProvider {
    static var previews: some View {
        FeedRecCell1(groupName: "Sample Group", fontColor: Color.orange, groupImage: UIImage(named: "Xccelerate 2")!)
    }
}
