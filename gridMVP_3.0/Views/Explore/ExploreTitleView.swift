//
//  ExploreTitleView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreTitleView: View {
    @State var filterSelection = 0
     
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .frame(width: 60, height: 6)
                    .cornerRadius(3)
                    .opacity(0.2)
                    .padding(.top)
                
                HStack {
//                    Text("Explore")
//                        .font(.largeTitle)
//                        .fontWeight(.heavy)
//                        .foregroundColor(Color.white)
//                        .padding()
                    TextField("search for a group...", text: $searchText)
                        .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    
                    Spacer()
                }
                
                
            }
            .background(Color("Pink"))
            
            ZStack (alignment: Alignment.top) {
                Image("Explore Background")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 5)
                    .offset(y: -10)
                VStack (alignment: .leading) {
                    ExploreSearchFilterMatrix1()
                }
            }
        }
    }
}

struct ExploreTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreTitleView()
    }
}
