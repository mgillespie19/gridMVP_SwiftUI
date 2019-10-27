//
//  User.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class User: Identifiable {
    let name: String
    let description: String
    let dateJoined: Date
    let profilePicture: UIImage
    let groups: [Group]
    
    init(Name: String, Description: String, DateJoined: Date, ProfilePicture: UIImage, Groups: [Group]) {
        self.name = Name
        self.description = Description
        self.dateJoined = DateJoined
        self.profilePicture = ProfilePicture
        self.groups = Groups
    }
}
