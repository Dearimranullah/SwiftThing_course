//
//  Ignoring_safeAerea.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI

struct Ignoring_safeAerea: View {
    var body: some View {
        ScrollView{
            VStack(){
            Text("This Is title")
                .font(.largeTitle)
                .frame(maxWidth:.infinity,alignment: .leading)
            
            ForEach(0..<20) { number in
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame( height:150)
                    .shadow(radius: 10)
                   .padding(20)
                    .overlay(
                    Text("Imranullah")
                    )
                    
                
            }
        }
        }.background(.red)
        
//        ****** The following is for safeAerea  *****
//        ZStack{
//            Color.red
//            .edgesIgnoringSafeArea(.all)
//        VStack{
//            Text("Hello Pakistan")
//               .padding(.top,50)
//            Spacer()
//
//        }.frame( maxWidth: .infinity, maxHeight: .infinity)
//           .background(.purple)
//         .edgesIgnoringSafeArea(.all)
//
//        }
        
    }
}

struct Ignoring_safeAerea_Previews: PreviewProvider {
    static var previews: some View {
        Ignoring_safeAerea()
    }
}
