//
//  Gradients.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        VStack{
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(
//
//                        LinearGradient(colors: [Color.green,Color.red,Color.orange], startPoint: .topTrailing, endPoint: .bottomLeading)
//
                        
//                        ********************
                        
//                        RadialGradient(colors: [Color.red,Color.blue], center: .bottom, startRadius: 10, endRadius: 200)
//
                        AngularGradient(
                            colors: [Color.red,Color.yellow,Color.black,Color.brown],
                            center: .center,
                            angle: .degrees(90)
                                       )
                        )
                    .frame(width: 300, height: 200)
                
                
            }
        }
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
