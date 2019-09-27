//
//  CalendarEvent.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/19/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class CalendarEvent {
    let name: String
    let group: Group
    
    init (n: String, g: Group) {
        name = n
        group = g
    }
}
