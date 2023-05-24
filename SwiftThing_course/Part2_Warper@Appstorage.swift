//
//  Part2_Warper@Appstorage.swift
//  SwiftThing_course
//
//  Created by Apple1 on 10/10/2022.
//

import SwiftUI

struct Part2_Warper_Appstorage: View {
//    @State var currentusername:String?
    @AppStorage("name") var currentUserName:String?
    
    var body: some View {
        VStack{
            Text(currentUserName ?? "Add name Here")
            if let name = currentUserName {
                Text("your current name is \(name)")
            }
            Button("Save".uppercased()){
                let name = "Hussain"
                currentUserName=name
//                UserDefaults.standard.set(name, forKey: "name")
            }
            
        }
//        .onAppear{
//            currentusername=UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct Part2_Warper_Appstorage_Previews: PreviewProvider {
    static var previews: some View {
        Part2_Warper_Appstorage()
    }
}
