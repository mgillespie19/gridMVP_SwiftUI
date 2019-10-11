//
//  GroupMemberCell.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/28/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI
import UIKit

struct GroupCell: View {
    var groupName: String
    var imageName: String
    var color: UIColor
    
    var body: some View {
        ZStack(alignment: Alignment.bottomLeading) {
            Image(self.imageName)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(self.groupName)
                    .padding()
                    .font(.custom("Courier New Bold", size: 18))
                Spacer()
            }
            .padding()
        }
        .background(Color.black)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct GroupMemberCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell(groupName: "a name", imageName: "xccelerate 2", color: .black)
    }
}
