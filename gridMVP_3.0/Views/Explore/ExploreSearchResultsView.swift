//
//  ExploreSearchResults.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 11/1/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ExploreSearchResultsView: View {
    @ObservedObject var viewModel: ExploreSearchViewModel
    
    var body: some View {
        ZStack {
            VStack{
                ExploreClusterMatrix1()
                    .padding()
            }
            .background(Color("LightGrey"))
            .opacity(0.82)
            .cornerRadius(15)
            .shadow(radius: 20)
            .padding()
        }
    }
}

struct ExploreSearchResults_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSearchResultsView(viewModel: ExploreSearchViewModel(Filters: [""]))
    }
}
