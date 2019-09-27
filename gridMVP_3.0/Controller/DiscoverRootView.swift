//
//  DiscoverRootView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct DiscoverRootView: View {
    var body: some View {
        VStack {
            MapView()
            .edgesIgnoringSafeArea(.top)
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct DiscoverRootView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverRootView()
    }
}
