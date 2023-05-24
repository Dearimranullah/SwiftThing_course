//
//  spacersss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI

struct spacersss: View {
    var body: some View {
        HStack{
            Spacer()
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Spacer()
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer()
//                .frame(height:20)
//                .background(.red)
//
        }.padding(.horizontal,100)
//            .background(.orange)
    }
}

struct spacersss_Previews: PreviewProvider {
    static var previews: some View {
        spacersss()
    }
}
