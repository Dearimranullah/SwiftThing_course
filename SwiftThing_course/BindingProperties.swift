//
//  BindingProperties.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct BindingProperties: View {
//    @State var sizes = 25.0
//    @State var color:Color = .black
    @State var backgroundcolor:Color = .red
    var body: some View {
        ZStack{
            backgroundcolor
                .ignoresSafeArea()
        VStack{
        
            ExtractedViews(backgroundcolor: $backgroundcolor)
        
         }
        }
      
        
    }
}

struct BindingProperties_Previews: PreviewProvider {
    static var previews: some View {
        BindingProperties()
    }
}
struct ExtractedViews: View {
    @Binding var backgroundcolor:Color
    @State var sizess = 25.0
    @State var colors:Color = .white
    @State var isbackgorund = false
    var body: some View {
            Button(action: {
                sizess=35.0
                colors = .green
                isbackgorund.toggle()
                if isbackgorund {
                    backgroundcolor = .red
                }
                else {
                    backgroundcolor = .orange
                }
            }, label: {
                Text("Submitt".uppercased())
                    .foregroundColor(colors)
                    .padding(.horizontal,20)
                    .padding(.vertical,sizess)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 28.0)
                        //                        .fill(.red)
                    )
            })
            
        }
    }

