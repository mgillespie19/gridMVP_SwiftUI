//
//  FeedOptions.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FeedOptions: View {
    @State var showFeedFilters = false
    @State var showScanQR = false
    @State var showNewPost = false
    
    var TAG = "FO: "
    
    
    var body: some View {
        HStack {
            Spacer()
            Text("Filter")
                .font(.headline)
                .foregroundColor(Color("Secondary-1-Font"))
                .padding()
                .onTapGesture {
                    self.showFeedFilters.toggle()
                    print(self.TAG, "filters called")
            }
            Spacer()
            Text("Scan QR")
                .font(.headline)
                .foregroundColor(Color("Secondary-1-Font"))
                .padding()
                .onTapGesture {
                    self.showScanQR.toggle()
                    print(self.TAG, "QR called")
            }
            Spacer()
            Text("Post")
                .font(.headline)
                .foregroundColor(Color("Secondary-1-Font"))
                .padding()
                .onTapGesture {
                    self.showNewPost.toggle()
                    print(self.TAG, "new post called")
            }
            Spacer()
        }
        .background(Color("Secondary-2"))
        .cornerRadius(5)
    }
}

struct FeedOptions_Previews: PreviewProvider {
    static var previews: some View {
        FeedOptions()
    }
}
