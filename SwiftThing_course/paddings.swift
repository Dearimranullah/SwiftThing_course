//
//  paddings.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI

struct paddings: View {
    var body: some View {
        VStack(alignment:.center){
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.bold)
            Text(" UIKit was a user interface framework that contained many out of the box UI elements and classes that developers used to build the UI for their app.")
        }
        .background(Color.orange
            .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
        )
        .padding(.horizontal,10)
        .cornerRadius(10)
        
    }
}

struct paddings_Previews: PreviewProvider {
    static var previews: some View {
        paddings()
    }
}
