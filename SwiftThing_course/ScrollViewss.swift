//
//  ScrollViewss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI

struct ScrollViewss: View {
    var body: some View {
//        In other to use less memory we use lazyVstack and also lazyHstack instead of Vstack and Hstack  for responsive websites
//        ****** In other to not show indicater we use  "showsIndicators:false"   *******
        ScrollView(showsIndicators: false, content:{
        VStack{
        ForEach(0..<10){ number in
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                ForEach(0..<10){ number in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.orange)
                        .frame(width: 200, height: 150)
                        .overlay(
                        Text("Imranullah")
                        )
                }
                }
            })
            
             
        }
        }
        })
    }
}

struct ScrollViewss_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewss()
    }
}
