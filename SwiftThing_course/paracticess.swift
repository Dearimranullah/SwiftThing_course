//
//  paracticess.swift
//  SwiftThing_course
//
//  Created by Apple1 on 25/01/2023.
//

import SwiftUI
struct Records:Identifiable {
    let id = UUID().uuidString
    
}
struct paracticess: View {
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.red
                .frame(width: 200,height: 200)
                .cornerRadius(20)
            ZStack{
                Circle()
                    .frame(width: 50,height: 50)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                    )
            }
        }
    }
}

struct paracticess_Previews: PreviewProvider {
    static var previews: some View {
        paracticess()
    }
}
