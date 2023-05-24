//
//  Colors.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(Color.primary)
//            .fill(Color.primary)
            .frame(width: 300, height: 200)
            
            
            
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
            
            
    }
}
