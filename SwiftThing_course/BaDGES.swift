//
//  BaDGES.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct BaDGES: View {
    var body: some View {
        TabView{
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Heart")
                }
                .badge("HI")
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Heart")
                }
                .badge(4)
            Color.orange
                .cornerRadius(30)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Heart")
                }
                .badge("Hello")
        }
    }
}

struct BaDGES_Previews: PreviewProvider {
    static var previews: some View {
        BaDGES()
    }
}
