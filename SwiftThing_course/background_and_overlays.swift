//
//  background_and_overlays.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI

struct background_and_overlays: View {
    var body: some View {
        VStack(spacing:50){
       Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
           .frame(width: 100, height: 100, alignment: .center)
         .background(
//               LinearGradient(colors: [Color.red,Color.orange,Color.green], startPoint: .leading, endPoint: .trailing)
//                   .cornerRadius(30)
           Circle()
                .fill(
//                  Color.blue
                    LinearGradient(colors: [Color.red,Color.orange,Color.green], startPoint: .leading, endPoint: .trailing)
//                                       .cornerRadius(30)
                     )
            )
            .frame(width: 150, height: 150, alignment: .center)
            .background(
               Circle()
                   .fill(Color.orange)

            )
           .shadow(color:.red.opacity(0.9), radius: 40, x: 10, y: 10)
        
        
//        ******** Now we are using overly *********
            VStack{
         
        Circle()
            .fill(Color.red)
            .frame(width: 100, height: 100,alignment: .trailing
            )
            .overlay(
            Text("1")
                .font(.largeTitle)
                .foregroundColor(.white)
            )
            .background(
                Circle()
                
                    .fill(Color.green)
                    .frame(width: 110, height: 110)
                    .scaledToFit()
            )
            .background(
                Rectangle()
                    .fill(Color.black)
                    .scaledToFit()
            )
            }
//             ********** now we using Image   ** *******
            Image(systemName: "heart.fill")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color.red,Color.orange,Color.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .red, radius: 10, x: 0.0, y: 10)
                        .overlay(
                        Circle()
                            .fill(Color.green)
                            .frame(width: 35 , height: 35)
                            .overlay(
                                Text("5"))
                        ,alignment:.bottomTrailing
                        )
                )
        }
    }
            
}

struct background_and_overlays_Previews: PreviewProvider {
    static var previews: some View {
        background_and_overlays()
    }
}
