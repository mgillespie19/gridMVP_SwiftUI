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
    var title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .background(self.backgroundColor)
                .cornerRadius(25)
        }
    }
}

struct ExploreClusterCell_Previews: PreviewProvider {
    static var previews: some View {        ExploreClusterCell(backgroundColor: Color.black, title: "This is a sample cell!")
    }
}
