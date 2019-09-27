//
//  ExploreRootView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreRootView: View {
    var body: some View {
        VStack {
//            VStack {
//                Rectangle()
//                .frame(width: 60, height: 6)
//                .cornerRadius(3)
//                .opacity(0.2)
//                .padding(.top)
//
//                HStack {
//                    Text("Explore")
//                        .font(.largeTitle)
//                        .fontWeight(.heavy)
//                        .foregroundColor(Color.white)
//                        .padding()
//                    Spacer()
//                }
//            }
//            .background(Color("Pink"))
            
            ZStack {
                List {
                    ExploreTitleView()
                        .listRowInsets(EdgeInsets())
                    Text("this is")
                    Text("definitely")
                    Text("another list I")
                    Text("haven't yet programmed")
                }
                .edgesIgnoringSafeArea(.all)
            
            }
        }
    }
}

struct ExploreRootView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreRootView()
    }
}
