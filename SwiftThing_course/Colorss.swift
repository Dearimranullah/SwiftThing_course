//
//  Colorss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 04/10/2022.
//

import SwiftUI
struct Colorss: View {
//    This is how to use colorLiteral
    var colorr = Color(#colorLiteral(red: 0, green: 0, blue: 1, alpha: 1))
    var body: some View {
        VStack{
        VStack{
        RoundedRectangle(cornerRadius: 30)
                .fill(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        .frame(width: 300, height: 200)
//        .shadow(radius: 10)
        .shadow(color:colorr.opacity(0.9), radius: 20, x: 20, y: 10)
            
        }
        .padding(.vertical,80)
            VStack{
                Text("Hello World")
                    .frame(width: 200, height: 200, alignment: .center)
//                    .background(Color(#colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)))
                    .background(Color(UIColor.green))
                    .cornerRadius(10)
//                Color(UIColor.green)
                HStack{
//                    ******* How to use "UIColor" *****
                Color(UIColor.systemOrange)
                    .frame(width: 100, height: 100)

                    .cornerRadius(20)
//                    ***** How to create custom color *****
                    Color("customcolor")
                        .frame(width: 100, height: 100)

                        .cornerRadius(20)
                    
                    
                    
                }
            }
        }
    }
}

struct Colorss_Previews: PreviewProvider {
    static var previews: some View {
        Colorss()
            
            
    }
}
