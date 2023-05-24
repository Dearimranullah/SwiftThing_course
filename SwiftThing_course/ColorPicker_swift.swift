//
//  ColorPicker_swift.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct ColorPicker_swift: View {
    
    @State var backgroundcolor:Color=Color.green
    var body: some View {
        ZStack{
            backgroundcolor
                .edgesIgnoringSafeArea(.all)
            
            
        ColorPicker("Select a Color", selection: $backgroundcolor, supportsOpacity: true)
                .background(.white)
                .foregroundColor(.black)
        }
    }
}

struct ColorPicker_swift_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_swift()
    }
}
