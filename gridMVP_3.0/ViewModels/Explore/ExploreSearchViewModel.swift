//
//  ExploreRootViewModel.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 11/1/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit
import Combine

class ExploreSearchViewModel: ObservableObject {
    @Published private(set) var groups: [Group] = []
    
    let filters:[String]
    
    private let url: URL
    private var cancellable: AnyCancellable?
    
    init(Filters: [String]) {
        // change this!
        self.url = URL(string: "www.somewebsite.com")!
        self.filters = Filters
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func load() {
        self.groups = sampleExploreResultGroups
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}

