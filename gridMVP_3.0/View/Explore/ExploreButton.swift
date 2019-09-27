//
//  ExploreButton.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreButton: View {
    @State var displayingExplore = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Spacer()
                Button(action: {
                    self.displayingExplore.toggle()
                }) {
                    Image("explore")
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(Color.white)
                }
                .background(Color("Pink"))
                .cornerRadius(10)
                .shadow(radius: 4)
                Spacer()
                Spacer()
            }
        }.sheet(isPresented: $displayingExplore, content: { ExploreRootView() })
    }
}

struct ExploreButton_Previews: PreviewProvider {
    static var previews: some View {
        ExploreButton()
    }
}
