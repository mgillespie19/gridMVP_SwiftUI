//
//  FeedHeaderViewModel.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/25/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit
import Combine

class FeedHeaderViewModel: ObservableObject {
    @Published private(set) var dateText = ""
    
    private var cancellable: AnyCancellable?
    
    init() {
        dateText = "No network detected."
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func load() {
        let defaultDate = NSDateComponents()
        defaultDate.year = 2016
        defaultDate.month = 12
        defaultDate.day = 25

        let currentDate = NSCalendar.current.date(from: defaultDate as DateComponents)
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.long
        formatter.timeStyle = .none
        
        if let today = currentDate {
            let dateString = formatter.string(from: today)
            print(dateString)
            self.dateText = dateString
        }
    }
}
