//
//  Images.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack{
            Image("trees")
                .resizable()
            //            .aspectRatio(contentMode: .fit)
            //            .scaledToFit()
                .scaledToFill()
                .frame(width: 300, height: 200)
            //        ******* Order or mention ******
                .clipped()
                .cornerRadius(30)
                .clipShape(
                    //                Circle()
                                    RoundedRectangle(cornerRadius: 30)
//                    Ellipse()
                    
                )
            //            .border(Color.red, width:3)
            //        ********* how to change background colers of image icon  ********
            Image("googles")
            //         ******** Automatically the foreground color also chang without using of the belowline if we set the Image in templete image  in setting without this setting the below line is must *****
            //            .renderingMode(.template)
                .resizable()
                .frame(width: 300, height: 200)
                .foregroundColor(.green)
            //            .background(.red)
        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
