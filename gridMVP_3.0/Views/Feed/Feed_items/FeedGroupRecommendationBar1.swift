//
//  FeedGroupRecommendationBar1.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedGroupRecommendationBar1: View {
    @ObservedObject var viewModel: FeedGroupRecommendationViewModel1
    
    var body: some View {
        VStack(alignment: .leading) {
            Text ("Some Recommended Groups")
                .fontWeight(.semibold)
                .font(.subheadline)
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15){
                    ForEach (viewModel.groups) { group in
                        FeedRecCell1(groupName: group.name, fontColor: group.fontColor, groupImage: group.image)
                    }
                }
                .padding(.leading)
            }
        }
        .padding(.bottom)
    }
}

struct FeedGroupRecommendationBar1_Previews: PreviewProvider {
    static var previews: some View {
        FeedGroupRecommendationBar1(viewModel: FeedGroupRecommendationViewModel1())
    }
}
