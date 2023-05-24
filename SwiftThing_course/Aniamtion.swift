//
//  Aniamtion.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct Aniamtion: View {
    @State var isanimation = false
    var body: some View {
        VStack{
           
            
            Button("ButtonAnimation"){
                withAnimation(
                    Animation
                    .default
                    .delay(0.9)
//                    .repeatCount(5, autoreverses: true)
                    .repeatForever(autoreverses:false)
                                )
                {
                    isanimation.toggle()
                }
//                isanimation.toggle()
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isanimation ? 50 : 20)
                .fill( isanimation ? Color.red : Color.orange)
                .frame(width: isanimation ? 100 : 300,
                       height: isanimation ? 100 : 300)
                .rotationEffect(Angle(degrees: isanimation ? 360 : 0))
                .offset( y: isanimation ? 300:0)
//                .animation(
//                    Animation
//                    .default
//                    .delay(0.5)
////                    .repeatCount(5, autoreverses: true)
//                    .repeatForever(autoreverses: false)
//                )
            Spacer()
        }
    }
}

struct Aniamtion_Previews: PreviewProvider {
    static var previews: some View {
        Aniamtion()
    }
}
