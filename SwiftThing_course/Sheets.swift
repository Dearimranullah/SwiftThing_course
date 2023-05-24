//
//  Sheets.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct Sheets: View {
    @State var showsheet:Bool = false
    var body: some View {
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showsheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding(20)
                    .background(
                        Color.green
                            .cornerRadius(20)
                    )
            })
            .fullScreenCover(isPresented: $showsheet, content: {
                        // Do NOT ADD CONDITIONAL LOGIC TO YHIS AEREA
                  SecondScreen()
                        })
//            .sheet(isPresented: $showsheet, content: {
//               // Do NOT ADD CONDITIONAL LOGIC TO YHIS AEREA
//                SecondScreen()
//            })
        }
    }
}


struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .padding(20)
                    .background(
                       Circle()
                        .foregroundColor(.white)
                          
                   )
            })
        }
    }
}



struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        Sheets()
//        SecondScreen()
    }
}
