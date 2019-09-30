//
//  Group.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class Group: Identifiable {
    let name: String
    let id: Int
    let type: String
    let description: String
    let image: UIImage
    let fontColor: UIColor
    let hideLabel: Bool
    
    init(ID: Int, n: String, t: String, d: String, fc: UIColor, i: UIImage, hl: Bool) {
        self.id = ID
        self.name = n
        self.type = t
        self.description = d
        self.fontColor = fc
        self.image = i
        self.hideLabel = hl
    }
    
    init(ID: Int, n: String, t: String, d: String, hl: Bool) {
        self.id = ID
        self.name = n
        self.type = t
        self.description = d
        self.fontColor = UIColor.white
        self.image = UIImage(named: "Group Background 1")!
        self.hideLabel = hl
    }
}


