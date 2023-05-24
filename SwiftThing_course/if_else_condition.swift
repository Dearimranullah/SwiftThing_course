//
//  if_else_condition.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct if_else_condition: View {
    @State var sizess = 25.0
    @State var colors:Color = .black
    @State var backgroundcolor:Color = .red
    @State var showcolor = false
    var body: some View {
        ZStack{
            backgroundcolor
                .ignoresSafeArea()
            VStack{
        Button(action: {
            sizess=30.0
            colors = .white
            showcolor.toggle()
//            showcolor ? backgroundcolor = .red : backgroundcolor = .orange
            if showcolor {
                backgroundcolor = .orange }
            else
            {
                backgroundcolor = .red
            }
        }, label: {
            Text("Submitt: \(showcolor.description)".uppercased())
                .foregroundColor(colors)
                .padding(.horizontal,20)
                .padding(.vertical,sizess)
                .background(
                    Capsule()
                        .stroke(.gray, lineWidth: 2.0)
                    //                        .fill(.red)
                )
        })
                ProgressView()
            }
        }
    }
}

struct if_else_condition_Previews: PreviewProvider {
    static var previews: some View {
        if_else_condition()
    }
}
