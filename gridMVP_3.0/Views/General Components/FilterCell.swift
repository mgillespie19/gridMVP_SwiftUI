//
//  FilterCell.swift
//  gridMVP_3.0
//
//  Created by Max Gillespie on 10/26/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct FilterCell: View {
    @State var selected = false
    var label: String
    
    var body: some View {
        
        Button(
            action: {
                self.selected.toggle()
        }, label: {
            Text(self.label)
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(selected ? Color("Pink") : Color.white)
                .frame(width: 110, height: 55)
        })
            .background(selected ? Color.white : Color.clear)
            .cornerRadius(15, antialiased: false)
            .overlay(
                RoundedRectangle(cornerRadius: 17)
                    .stroke(Color.white, lineWidth: 3)
        )
            .padding(.leading)
            .padding(.top)
            .padding(.bottom)
    }
}

struct FilterCell_Previews: PreviewProvider {
    static var previews: some View {
        FilterCell(label: "academic")
            .background(Color("Pink"))
    }
}
