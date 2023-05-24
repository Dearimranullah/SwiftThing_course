//
//  Wraper@Appstorage.swift
//  SwiftThing_course
//
//  Created by Apple1 on 10/10/2022.
//

import SwiftUI

struct Wraper_Appstorage: View {
    @State var currentusername:String?
    var body: some View {
        VStack{
            Text(currentusername ?? "Add name Here")
            if let name = currentusername {
                Text("your current name is \(name)")
            }
            Button("Save".uppercased()){
                let name = "hussain"
                currentusername=name
                UserDefaults.standard.set(name, forKey: "name")
            }
            
        }
        .onAppear{
            currentusername=UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct Wraper_Appstorage_Previews: PreviewProvider {
    static var previews: some View {
        Wraper_Appstorage()
    }
}
