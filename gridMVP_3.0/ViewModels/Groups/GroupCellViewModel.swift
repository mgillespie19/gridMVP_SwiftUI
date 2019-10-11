////
////  GroupCellViewModel.swift
////  gridMVP_3.0
////
////  Created by Max Gillespie on 10/3/19.
////  Copyright © 2019 Max Gillespie. All rights reserved.
////
//
//import UIKit
//import Combine
//
//enum GroupLoadingError: Error {
//    case imageLoadError
//    case groupInfoInvalidError
//    case connectionError
//    case otherError
//}
//
//class GroupCellViewModel: ObservableObject {
//    @Published private(set) var image: UIImage = UIImage(named: "Xccelerate")
//    @Published private(set) var groupName: String = "Xccelerate"
////    @Published private(set) var imageName: String
//    @Published private(set) var color: UIColor = UIColor.black
//    
//    private let url: URL
//    private var cancellable: AnyCancellable?
//    private let cache: NSCache<NSString, UIImage> = NSCache()
//    private let group: Group
//    private let TAG = "GCVM:"
//    
//    init(group: Group) {
//        self.url = URL(string: "www.dummyurl.com")!
//        
//        self.group = group
//    }
//    
//    deinit {
//        cancellable?.cancel()
//    }
//    
//    func load() {
//        print(TAG, "load called.")
//        // hit the url here !
//
//        self.image = group.image
//        self.$color = group.fontColor
//        self.$groupName = group.name
//    }
//    
//    func cancel() {
//        cancellable?.cancel()
//    }
//}
