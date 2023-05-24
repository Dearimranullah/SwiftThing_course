//
//  Extracting_subView.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct Extracting_subView: View {
    @State var sizes = 25.0
    @State var color:Color = .black
    @State var backgroundcolor:Color = .red
    var body: some View {
        ZStack{
            backgroundcolor
                .ignoresSafeArea()
            VStack(spacing:20){
        
            ExtractedView(backgroundcolor: $backgroundcolor)
      
            reusable
         }
        }
        
    }
    var reusable: some View {
        VStack{
            Button(action: {
                sizes=40.0
                color = .white
                backgroundcolor = .purple
            }, label: {
                Text("Reusable Submit".uppercased())
                    .foregroundColor(color)
                    .padding(.horizontal,20)
                    .padding(.vertical,sizes)
                    .background(
                    Capsule()
                        .stroke(.gray, lineWidth: 2.0)
//                        .fill(.red)
                    )
            })

        }
    }
}

struct Extracting_subView_Previews: PreviewProvider {
    static var previews: some View {
        Extracting_subView()
    }
}

struct ExtractedView: View {
    @Binding var backgroundcolor:Color
    @State var sizess = 25.0
    @State var colors:Color = .white
    var body: some View {
            Button(action: {
                sizess=35.0
                colors = .green
                backgroundcolor = .orange
            }, label: {
                Text("Submitts".uppercased())
                    .foregroundColor(colors)
                    .padding(.horizontal,20)
                    .padding(.vertical,sizess)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                        //                        .fill(.red)
                    )
            })
            
        }
    }
