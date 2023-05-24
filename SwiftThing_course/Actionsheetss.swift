//
//  Actionsheetss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 07/10/2022.
//

import SwiftUI

struct Actionsheetss: View {
    @State var ShowAcionsheet:Bool = false
    let  Button1:ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
    let  Button2:ActionSheet.Button = .default(Text("DEFAULT"))
    let  Button3:ActionSheet.Button = .cancel()
    var body: some View {
        Button("Click Me"){
            ShowAcionsheet.toggle()
        }
        .actionSheet(isPresented: $ShowAcionsheet, content: {
            ActionSheet(
                title: Text("This is tiitle"),
                message: Text("This is message"),
                buttons: [Button1,Button2,Button3])
        })
    }
}

struct Actionsheetss_Previews: PreviewProvider {
    static var previews: some View {
        Actionsheetss()
    }
}
