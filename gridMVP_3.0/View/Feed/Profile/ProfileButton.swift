//
//  ProfileButton.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ProfileButton: View {
    @State var showingProfile = false
    
    var body: some View {
        Image("Profile Pic")
            .resizable()
            .frame(width: 40, height: 40)
            .offset(x: -10)
            .onTapGesture {
                self.showingProfile.toggle()
        }
        .sheet(isPresented: $showingProfile, onDismiss: {
            self.showingProfile = false
            print("profile view dismissed")
        }, content: {
            ProfileView()
        })
    }
}

struct ProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButton()
    }
}
