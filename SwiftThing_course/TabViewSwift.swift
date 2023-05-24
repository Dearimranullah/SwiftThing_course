//
//  TabViewSwift.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct TabViewSwift: View {
    var body: some View {
        RoundedRectangle(cornerRadius:10)
            .stroke(.red,lineWidth: 0.2)
            .overlay{
                TabView{
                    ScrollViewss()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    Text("Globe View")
                        .tabItem {
                            Image(systemName: "globe")
                            Text("Home")
                        }
                    Text("Heart View")
                        .tabItem {
                            Image(systemName: "bolt.heart.fill")
                            Text("Home")
                        }
                    Text("Airport")
                        .tabItem {
                            Image(systemName: "airplane")
                            Text("Home")
                        }
                }
                .frame(width: 400)
                .accentColor(.blue)
            }.background(.red)
        
    }
}

struct TabViewSwift_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSwift()
    }
}
