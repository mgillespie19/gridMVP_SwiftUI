//
//  EventsRootView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 9/27/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct EventsRootView: View {
    var body: some View {
        List {
            Text("Event 1")
            Text("Event 2")
            Text("Event 3")
        }
    }
}

struct EventsRootView_Previews: PreviewProvider {
    static var previews: some View {
        EventsRootView()
    }
}
