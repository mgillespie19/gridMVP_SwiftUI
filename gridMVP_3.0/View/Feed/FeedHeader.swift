//
//  FeedHeader.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedHeader: View {
    var body: some View {
        ZStack {
            Image("Feed Header")
                .resizable()
                .scaledToFit()
            
            VStack {
                HStack() {
                    VStack(alignment: .leading) {
                        Text("Your Feed")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                        Text("Friday, September 27, 2019")
                            .fontWeight(.light)
                            .font(.body)
                    }
                    .foregroundColor(Color.white)
                    .offset(x: -20)
                    
                    ProfileButton()
                        .offset(y: -10)
                }
            }
        }
        
    }
}

struct FeedHeader_Previews: PreviewProvider {
    static var previews: some View {
        FeedHeader()
    }
}
