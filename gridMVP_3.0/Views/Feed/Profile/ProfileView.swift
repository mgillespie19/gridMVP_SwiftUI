//
//  ProfileView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var updateProfilePicture = false
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image("Profile Pic")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .onTapGesture {
                        self.updateProfilePicture.toggle()
                    }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Max Gillespie")
                        .font(.largeTitle)
                    HStack (alignment: .top) {
                        Text("Pittsburgh, PA")
                            .font(.caption)
                        Text("|")
                        Text ("Member since 2019")
                            .font(.caption)
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
            .padding()
            
            
            VStack (alignment: .leading) {
                Text("Description")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Mobile Application Developer with a specific interest in launching new ideas and learning in a fast-paced work environment.\n\nI have a strong proficiency in Swift and Kotlin, as well as blockchain technology such as Ethereum and other solidity-based currencies.")
            }.padding()
            
            
            
            Spacer()
        }
        .sheet(isPresented: $updateProfilePicture, content: {
            UpdateProfilePictureView()
        })
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
