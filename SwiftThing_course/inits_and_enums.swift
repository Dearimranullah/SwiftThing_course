//
//  inits_and_enums.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI

struct inits_and_enums: View {
    let backgroundcolor:Color
    var number:Int
    var names:String
//    init(backgroundcolor:Color ,number:Int , names:String)
    init(number1:Int , fruite:Fruite)
    {
//        self.backgroundcolor = backgroundcolor
//        self.names=names
        self.number=number1
        if fruite == .orange
        {
            self.backgroundcolor = .orange
            self.names = "Orange"
        }
        else {
            self.backgroundcolor = .red
            self.names = "Apple"
        }
    }
    enum Fruite {
    case apple,orange
    }
    var body: some View {
        VStack {
            VStack(spacing:20){
                Text("\(number)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .underline()
                
                Text("\(names)")
                    .font(.headline)
                    .foregroundColor(.white)
            }.frame(width: 150, height: 150)
                .background(backgroundcolor)
            .cornerRadius(10)
            
//            ***** Calling of reusable Wedgets
            container(numbers: 12, namess: "Asim")
        }
    }
}

struct inits_and_enums_Previews: PreviewProvider {
    static var previews: some View {
//        ***** the following line is like a function calling ********
//        when we call function one time
        inits_and_enums(number1: 55, fruite: .apple)
        
        
//        Now we want to call function to timses and  and passing value different
//        HStack{
//        inits_and_enums(number: 55, fruite: .apple)
//        inits_and_enums(number: 55, fruite: .orange)
//        }
        
    }
}




//******** This is reusable wedgets


struct container:View{
    var numbers:Int
    var namess:String
    var body: some View {
        VStack(spacing:20){
            Text("\(numbers)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(namess)")
                .font(.headline)
                .foregroundColor(.white)
        }.frame(width: 150, height: 150)
            .background(.orange)
            .cornerRadius(10)
        
    }

}
