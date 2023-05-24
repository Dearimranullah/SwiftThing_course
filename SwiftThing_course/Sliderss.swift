//
//  Sliderss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct Sliderss: View {
    @State var slidervalue:Double = 3.0
    @State var color:Color = .red
    var body: some View {
        VStack{
            Text("Value is :")
            Text(String(format: "%.2f", slidervalue))
                .foregroundColor(color)
//            Slider(value: $slidervalue)
//                .accentColor(.red)
//            Slider(value: $slidervalue, in: 1...10)
//            Slider(value: $slidervalue, in: 1...10, step: 1)
            Slider(value: $slidervalue,
                   in:1...10,
                   step: 0.5, label:{
                Text("Title")
            }, minimumValueLabel: {
                Text("1")
            }, maximumValueLabel: {
                Text("2")
            }, onEditingChanged: { (_) in
                color = .green
            }
)
        }
    }
}

struct Sliderss_Previews: PreviewProvider {
    static var previews: some View {
        Sliderss()
    }
}
