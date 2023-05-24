//
//  Showalert.swift
//  SwiftThing_course
//
//  Created by Apple1 on 07/10/2022.
//

import SwiftUI

struct Showalert: View {
    @State  var showalerts:Bool = false
    @State var backgroundColors:Color = Color.red
    var body: some View {
        ZStack {
            backgroundColors
                .edgesIgnoringSafeArea(.all)
        Button("CLICK ME"){
            showalerts.toggle()
        }
        .alert(isPresented: $showalerts, content: {
            getAlert()
//            Alert(title: Text("There was an Error!"))
//            Alert(title: Text("Check It Out"),
//                  message: Text("there was an error!"),
//                  primaryButton: .destructive(Text("DELETE")),
//                  secondaryButton: .cancel())
        })
        }
    }
    func getAlert () -> Alert {
        return    Alert(title: Text("Check It Out"),
                        message: Text("there was an error 😜!"),
                        primaryButton: .destructive(Text("DELETE"),action: {
            backgroundColors = .yellow
                                }),
                        secondaryButton: .cancel())
    }
}

struct Showalert_Previews: PreviewProvider {
    static var previews: some View {
        Showalert()
    }
}
