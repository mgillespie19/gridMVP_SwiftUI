//
//  Group.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class Group: Identifiable {
    let name: String
    let id: Int
    let type: String
    let description: String
    let image: UIImage
    let fontColor: Color
    let hideLabel: Bool
    
    init(ID: Int, Name: String, Type: String, Description: String, FontColor: Color, Image: UIImage, HideLabel: Bool) {
        self.id = ID
        self.name = Name
        self.type = Type
        self.description = Description
        self.fontColor = FontColor
        self.image = Image
        self.hideLabel = HideLabel
    }
    
    init(ID: Int, n: String, t: String, d: String, hl: Bool) {
        self.id = ID
        self.name = n
        self.type = t
        self.description = d
        self.fontColor = Color.white
        self.image = UIImage(named: "Group Background 1")!
        self.hideLabel = hl
    }
}


