//
//  ExploreClusterMatrix1.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 11/1/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreClusterMatrix1: View {
    var body: some View {
        VStack {
            HStack (alignment: .top){
                VStack (alignment: .leading) {
                    ExploreClusterCell(backgroundColor: Color.black, textColor: Color.white, title: "a box")
                        .frame(width: 125, height: 250)
                    ExploreClusterCell(backgroundColor: Color.black, textColor: Color.white, title: "a box")
                        .frame(width: 140, height: 100)
                }
                
                VStack (alignment: .trailing) {
                    ExploreClusterCell(backgroundColor: Color.black, textColor: Color.white, title: "a box")
                        .frame(width: 165, height: 175)
                    ExploreClusterCell(backgroundColor: Color.black, textColor: Color.white, title: "a box")
                        .frame(width: 145, height: 175)
                }
            }
            
            ExploreClusterCell(backgroundColor: Color.black, textColor: Color.white, title: "a box")
            .frame(height: 150)
                
            Spacer()
        }.frame(width: 315)
    }
}

struct ExploreClusterMatrix1_Previews: PreviewProvider {
    static var previews: some View {
        ExploreClusterMatrix1()
    }
}
