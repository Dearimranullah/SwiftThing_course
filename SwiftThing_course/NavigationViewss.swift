//
//  NavigationView.swift
//  SwiftThing_course
//
//  Created by Apple1 on 06/10/2022.
//

import SwiftUI

struct NavigationViewss: View {
    var body: some View {
        NavigationView {
            ScrollView{
//                NavigationLink("Button", destination: Text("Second Screen"))
                NavigationLink("Button", destination: MyotherScreen())
                Text("Hello W0rld")
                Text("Hello W0rld")
                Text("Hello W0rld")
                Text("Hello W0rld")
            }.navigationTitle("All Inboxe")
                .navigationBarItems(
                    leading: Image(systemName: "person"),
                   trailing:
//                        Image(systemName: "heart.fill")
                    NavigationLink(destination:MyotherScreen() ,
                                   label:{
                                       Image(systemName:"heart.fill")
                                   }
                                  ).accentColor(.red)
                )
//                .navigationBarHidden(true)
            
            
        }
    }
}
struct MyotherScreen:View {
    @Environment (\ .presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
//                .navigationBarHidden(true)
            Button("Button"){
                presentationMode.wrappedValue.dismiss()
            }.padding(.bottom,20)
            NavigationLink("Click Me", destination:Text("Third Screen")).padding(.top,50)
            
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewss()
    }
}
