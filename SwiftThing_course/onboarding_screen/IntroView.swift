//
//  IntroView.swift
//  SwiftThing_course
//
//  Created by Apple1 on 10/10/2022.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("Signe_in") var currentUserAcount:Bool = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color.red,Color.blue], center: .bottom,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserAcount {
                profileView()
            }
            else{
               Onboarding_View()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
