//
//  SystemMaterial_and_Background.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct SystemMaterial_and_Background: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                
                Text("Hi Bro")
            }
            .frame( height:350)
            .frame(maxWidth:.infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            
            
        }
        .background(
            Image("trees")
            )
        .ignoresSafeArea()
    }
}

struct SystemMaterial_and_Background_Previews: PreviewProvider {
    static var previews: some View {
        SystemMaterial_and_Background()
    }
}
