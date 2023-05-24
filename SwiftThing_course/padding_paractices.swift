//
//  padding_paractices.swift
//  SwiftThing_course
//
//  Created by Apple1 on 18/10/2022.
//

import SwiftUI

struct padding_paractices: View {
    var body: some View {
        ZStack {
            Color(.red)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Line1")
                        .foregroundColor(Color("Orange"))
                        .bold()
                        .font(.system(size: 17.5))
                        .padding(.top)
                    Spacer()
                    
                    Image(systemName: "globe")
                        .padding(.top)
                    
                }
                .padding()
                
                VStack(alignment: .leading) {
                    
                    Image("person")
                    
                    Text("State")
                        .foregroundColor(Color("Toolstext"))
                        .font(.system(size: 15))
                    //.font(family == .systemLarge ? .title :
                    // .headline)
                    
                    Text("Last update 4.16.2021")
                        .foregroundColor(Color("Toolstext"))
                        .font(.system(size: 10))
                        .opacity(0.5)
                    
                    Spacer()
                    Spacer()
                }
                .padding()
                
            }
            
        }
    }
                    
}

struct padding_paractices_Previews: PreviewProvider {
    static var previews: some View {
        padding_paractices()
    }
}
