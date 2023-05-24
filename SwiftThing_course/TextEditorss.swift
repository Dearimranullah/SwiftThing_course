//
//  TextEditorss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 07/10/2022.
//

import SwiftUI

struct TextEditorss: View {
//    init() {
//            UITextView.appearance().backgroundColor = .clear
//        }

    @State var Texts:String = ""
    @State var name:String = ""
    var body: some View {
        VStack(alignment: .center){
        TextEditor(text: $Texts)
                .padding()
                .frame(width: 300, height: 200)
                .background(.black)
                .foregroundColor(.black)
                .cornerRadius(20)
//                .border(.red, width: 1)
            Button("Save"){
                name=Texts
            }.padding()
                .background(
                    Color.orange)
              .cornerRadius(10)
            Text("Your mesage is:  \(name)")
        }
    }
}

struct TextEditorss_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorss()
    }
}
