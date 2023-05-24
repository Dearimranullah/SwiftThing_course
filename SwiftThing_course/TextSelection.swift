//
//  TextSelection.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct TextSelection: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
        
    }
}

struct TextSelection_Previews: PreviewProvider {
    static var previews: some View {
        TextSelection()
    }
}
