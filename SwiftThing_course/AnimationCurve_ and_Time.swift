//
//  AnimationCurve_ and_Time.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct AnimationCurve__and_Time: View {
    @State var isAnimation = false
    var body: some View {
        VStack{
            Button("Button"){
                isAnimation.toggle()
            }
            Text("This another Animation")
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.red)
                    .frame(width: isAnimation ? 300:200 , height:50)
                    .animation(
                        .spring(
//                            response: 1.0,
//                            dampingFraction: 0.2,
//                            blendDuration: 1.0
                            response: 0.5,
                            dampingFraction: 0.3,
                            blendDuration: 1.0
                        )
                    )
            }
//            Text("This is animation")
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//                .frame(width: isAnimation ? 300:200 , height:50)
//                .animation(Animation.easeIn(duration: 3.0))
//
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//                .frame(width: isAnimation ? 300:200 , height:50)
//                .animation(Animation.easeOut(duration: 4.0))
//
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//                .frame(width: isAnimation ? 300:200 , height:50)
//                .animation(Animation.linear(duration: 2.5))
//
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//                .frame(width: isAnimation ? 300:200 , height:50)
//                .animation(Animation.easeIn(duration: 2.0))
        }
    }
}

struct AnimationCurve__and_Time_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurve__and_Time()
    }
}
