//
//  steppers.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct steppers: View {
    @State var numbers:Int = 0
    @State var nmbers:Int = 0
    var body: some View {
        VStack{
        Stepper("Numbers: \(numbers)", value: $numbers)
            
            
            
//            **** Custom Stepper  ******
            
            Stepper("Numbers:\(nmbers)") {
                nmbers += 10
            } onDecrement: {
                nmbers -= 10
            }

        }
    }
}

struct steppers_Previews: PreviewProvider {
    static var previews: some View {
        steppers()
    }
}
