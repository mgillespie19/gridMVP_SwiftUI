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
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                ExploreTitleView()
                
                ExploreSearchResultsView(viewModel: ExploreSearchViewModel(Filters: [""]))
                    .offset(y: -230)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ExploreRootView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreRootView()
    }
}
