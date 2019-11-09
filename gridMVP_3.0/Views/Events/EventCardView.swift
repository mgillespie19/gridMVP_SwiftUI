//
//  EventCardView.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 11/2/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct EventCardView: View {
    var eventName: String
    var eventDescription: String
    var eventGroup: Group
//    var eventDate: Date
    
    var body: some View {
        VStack (alignment: .leading){
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    Text(self.eventName)
                        .font(.largeTitle)
                    Text(self.eventDescription)
                        .font(.callout)
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("event date")
                }
            }
            
            HStack {
                Text("attributes")
                Spacer()
                Text(self.eventGroup.name)
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(0)
        .shadow(radius: 4)
    }
}

struct EventCardView_Previews: PreviewProvider {
    static var previews: some View {
        EventCardView(eventName: "party", eventDescription: "it's a party lol", eventGroup: sampleSubscribedGroups[0])
    }
}
