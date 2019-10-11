//
//  GroupRootViewModel.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/3/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit
import Combine

class GroupRootViewModel: ObservableObject {
    @Published private(set) var groups: [Group] = []
    
    private let url: URL
    private var cancellable: AnyCancellable?
    
    init() {
        // change this!
        self.url = URL(string: "www.somewebsite.com")!
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func load() {
        self.groups = sampleGroups
        
//      example of fetching images
//        cancellable = URLSession
//            .shared
//            .dataTaskPublisher(for: url)
//            .tryMap { data, _ in
//                let imagesArrayData = try JSONDecoder().decode(ImageArrayData.self, from: data)
//                return imagesArrayData.images
//        }
//        .receive(on: DispatchQueue.main)
//        .sink(
//            receiveCompletion: { completion in print(completion) },
//            receiveValue: { [weak self] images in
//                self?.images = images
//            }
//        )
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}
