//
//  FeedHeader.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedHeader: View {
    @ObservedObject var viewModel: FeedHeaderViewModel
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(self.viewModel.dateText)
                .offset(x: 14, y: -25)
            FeedButtonBar()
                .offset(y: -20)
        }.onAppear(perform: {
            self.viewModel.load()
        })
    }
}

struct FeedHeader_Previews: PreviewProvider {
    static var previews: some View {
        FeedHeader(viewModel: FeedHeaderViewModel())
    }
}
