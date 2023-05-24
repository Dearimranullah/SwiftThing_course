//
//  Transition.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct Transition: View {
    @State var showView:Bool = false
    var body: some View {
        ZStack{
        VStack{
            Button("Button"){
                showView.toggle()
            }
            Spacer()
            if showView {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: UIScreen.main.bounds.height*0.5)
//                .transition(.slide)
//                .transition(.move(edge: .top))
                .transition(.asymmetric(
                    insertion: .move(edge: .leading),
                    removal: .move(edge: .bottom)))
                
                .animation(.easeInOut)
//                .animation(.spring())
            }
        }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
