//
//  DiscoverRootView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct DiscoverRootView: View {
    @State private var searchCity = ""
    
    var body: some View {
        ZStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
            
//            VStack {
//                VStack {
//                    TextField("Enter City", text: $searchCity)
//                        .padding()
//                    Text("Showing events in \(self.searchCity)")
//                        .padding()
//                }
//                .background(Color.gray)
//                .shadow(radius: 10)
//                .cornerRadius(15)
//                
//                Spacer()
//            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DiscoverRootView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverRootView()
    }
}
