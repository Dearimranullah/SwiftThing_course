//
//  TextEditor.swift
//  SwiftThing_course
//
//  Created by Apple1 on 07/10/2022.
//

import SwiftUI

struct TextEditor: View {
    @State var text = "This is  Editor"
    var body: some View {
        VStack{
            TextEditor()
                .frame(width: 300, height: 300)
                .background(.gray)
            TextEditor(text: $text)
                .multilineTextAlignment(.center)
                .lineSpacing(10.0)
        }
    }
}

struct TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor()
    }
}
