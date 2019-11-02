//
//  ExploreClusterCell.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreClusterCell: View {
    var backgroundColor: Color
    var textColor: Color
    var title: String
    
    var body: some View {
        ZStack {
            Rectangle() .foregroundColor(self.backgroundColor)
                .cornerRadius(25)
            Text(self.title)
                .foregroundColor(self.textColor)
        }
        .shadow(radius: 3)
    }
}

struct ExploreClusterCell_Previews: PreviewProvider {
    static var previews: some View {        ExploreClusterCell(backgroundColor: Color.blue, textColor: Color.white, title: "This is a sample cell!")
    }
}
