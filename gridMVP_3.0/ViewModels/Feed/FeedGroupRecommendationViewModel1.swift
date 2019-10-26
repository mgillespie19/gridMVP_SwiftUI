//
//  FeedGroupRecommendationViewModel1.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FeedGroupRecommendationViewModel1: ObservableObject {
    @Published private(set) var groups: [Group] = []
    
    private let url: URL
    private var cancellable: AnyCancellable?
    
    init() {
        // change this!
        self.url = URL(string: "www.somewebsite.com")!
        self.groups = sampleGroups
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func load() {
        self.groups = sampleGroups
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}
