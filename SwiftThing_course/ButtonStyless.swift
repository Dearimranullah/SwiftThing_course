//
//  ButtonStyless.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct ButtonStyless: View {
    var body: some View {
        VStack{
            
            Button {
                
            } label: {
                Text("Button Style")
                    .frame( height:55)
                    .frame(maxWidth:.infinity)
            }
            .buttonStyle(.borderedProminent)
//            The controll size is connect to the label size text
            .controlSize(.large)
            .buttonBorderShape(.capsule)

            
        Button("Click Me"){
            
        }
        .frame( height:55)
        .frame(maxWidth:.infinity)
        .buttonStyle(.plain)
       .background(.red)
       .cornerRadius(20)
            
//            Any confusing occure see the vedio agian where the accent color is change
            
            Button("Click Me"){
                
            }
            .frame( height:55)
            .frame(maxWidth:.infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Click Me"){
                
            }
            .frame( height:55)
            .frame(maxWidth:.infinity)
            .buttonStyle(.bordered)
        }.padding(30)
    }
}

struct ButtonStyless_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyless()
    }
}
