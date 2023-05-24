//
//  creatingShapes.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct creatingShapes: View {
    var body: some View {
        VStack{
            //       Circle()
            Ellipse()
                .frame(width: 200, height: 100)
                   Capsule(style:.circular)
                .frame(width: 100, height: 100)
            //        Rectangle()
            RoundedRectangle(cornerRadius:20)
            //            .fill(Color.green)
            //            .foregroundColor(Color.red)
            //            .stroke()
//                        .stroke(Color.red)
            //            .stroke(Color.red,lineWidth: 10)
            //            .stroke(Color.orange,style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .bevel, dash:[30]))
            //        ***************
            //            .trim(from: 0.2, to: 1.0)
            //           .stroke(Color.green,lineWidth:20)
            //           .padding(.horizontal,40)
                .frame(width: 200, height: 100)
        }
    }
}

struct creatingShapes_Previews: PreviewProvider {
    static var previews: some View {
        creatingShapes()
    }
}
