//
//  ExploreSearchFilterMatrix1.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreSearchFilterMatrix1: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 0) {
                VStack {
                    FilterCell(label: "academic")
                    FilterCell(label: "business")
                }
                
                VStack {
                    FilterCell(label: "art")
                    FilterCell(label: "sports")
                }
                
                VStack {
                    FilterCell(label: "volunteer")
                    FilterCell(label: "ux/ux")
                }
                
                VStack {
                    FilterCell(label: "networking")
                    FilterCell(label: "marketing")
                }
                
                VStack {
                    FilterCell(label: "tech")
                    FilterCell(label: "music")
                }
            }
        }
    }
}

struct ExploreSearchFilterMatrix1_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSearchFilterMatrix1()
            .background(Color.blue)
    }
}
