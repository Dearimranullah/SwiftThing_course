//
//  frames_and_aligment.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct frames_and_aligment: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
//            .frame(width: 300, height: 200, alignment: .top)
//            .background(.green)
//            .cornerRadius(20)
//            .frame( maxWidth: .infinity,maxHeight: .infinity ,alignment: .top)
//            .background(.green)
            .frame( height:100)
            .background(.green)
            .frame(width: 200)
            .background(.purple)
            .frame(maxWidth:.infinity,alignment: .center)
            .background(.red)
            .frame( height:400)
            .background(.blue)
            .frame(maxHeight:.infinity,alignment:.bottom)
            .background(.orange)
            .ignoresSafeArea()
    }
}

struct frames_and_aligment_Previews: PreviewProvider {
    static var previews: some View {
        frames_and_aligment()
    }
}
