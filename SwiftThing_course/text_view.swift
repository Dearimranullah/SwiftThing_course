//
//  text_view.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct text_view: View {
    var body: some View {
        Text("Hello, World" .uppercased())
//        Text("Hello I am Imranullah Belong to Mardan . My education is bcs S" +
//             "oftware from abdul wali Khan University Mardan and have GFA is 3.42")
//            .font(.largeTitle)
////            .fontWeight(.bold)
//            .bold()
////            .underline()
////            .strikethrough()
//            .underline(true, color: Color.green)
//            .italic()
//            .strikethrough(true, color: Color.red)
//            .font(.system(size: 24, weight: .bold, design: .default))
//        *************  space between line  ********
//        .baselineOffset(20)
//        ******** space between words *******
//            .kerning(1.0)
//           .multilineTextAlignment(.center)
            .foregroundColor(.red)
            .frame(width: 235, height: 200,alignment: .bottomTrailing)
//            .background(.gray)
            .border(.red, width: 1)
//            .border(.green, width: 1)
        
            
    }
}

struct text_view_Previews: PreviewProvider {
    static var previews: some View {
        text_view()
    }
}
