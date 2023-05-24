//
//  Iconss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct Iconss: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.system(size: 100))
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
//            .font(.caption)
//            .font(.system(size: 200))
            .foregroundColor(.red)
//            .frame(width: 300, height: 300)
//            .border(Color.green, width: 1)
//            .clipped()
           
    }
}

struct Iconss_Previews: PreviewProvider {
    static var previews: some View {
        Iconss()
    }
}
