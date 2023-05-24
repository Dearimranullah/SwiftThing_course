//
//  POP_VIEW.swift
//  SwiftThing_course
//
//  Created by Apple1 on 25/11/2022.
//

import SwiftUI

struct POP_VIEW: View {
    @State var isActive : Bool = false
    var body: some View {
        NavigationView {
                    NavigationLink(
                        destination: ContentView2(rootIsActive: self.$isActive),
                        isActive: self.$isActive
                    ) {
                        Text("Hello, World!")
                    }
                    .isDetailLink(false)
                    .navigationBarTitle("Root")
                }
    }
}

struct POP_VIEW_Previews: PreviewProvider {
    static var previews: some View {
        POP_VIEW()
    }
}
struct ContentView2: View {
    @Binding var rootIsActive : Bool
var body: some View {
        NavigationLink(destination: ContentView3(shouldPopToRootView: self.$rootIsActive)) {
            Text("Hello, World #2!")
        }
        .isDetailLink(false)
        .navigationBarTitle("Two")
    }
}
struct ContentView3: View {
    @Binding var shouldPopToRootView : Bool
var body: some View {
        VStack {
            Text("Hello, World #3!")
            Button (action: { self.shouldPopToRootView = false } ){
                Text("Pop to root")
            }
        }.navigationBarTitle("Three")
    }
}

