//
//  GroupCellViewModel.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/3/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import UIKit
import Combine

enum GroupLoadingError: Error {
    case imageLoadError
    case groupInfoInvalidError
    case connectionError
    case otherError
}

class GroupCellViewModel: ObservableObject {
    @Published private(set) var image: UIImage?
    
    private let name: String
    private let url: URL
    private var cancellable: AnyCancellable?
    
    private let cache: NSCache<NSString, UIImage> = NSCache()
    
    init(name: String) {
        self.url = URL(string: "www.dummyurl.com")!
        self.name = name
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func load() {
        print("load")
        // hit the url here !
        
        self.image = UIImage(named: "xccelerate 2")
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}
