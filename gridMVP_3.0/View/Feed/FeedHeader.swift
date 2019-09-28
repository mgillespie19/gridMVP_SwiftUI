//
//  FeedHeader.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedHeader: View {
    var date = "September 27, 2019"
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(self.date)
                .offset(y: -15)
            FeedOptions()
                .offset(y: -8)
            .shadow(radius: 5)
        }
        
    }
}

struct FeedHeader_Previews: PreviewProvider {
    static var previews: some View {
        FeedHeader()
    }
}
