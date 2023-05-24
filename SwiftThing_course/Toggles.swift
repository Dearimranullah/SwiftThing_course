//
//  Toggles.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct Toggles: View {
    @State var isToggleStatus:Bool = false
    var body: some View {
        ZStack(alignment:.center){
            isToggleStatus ? Color.gray : Color.green
        VStack{
            HStack{
                Text("Status:")
                Text(isToggleStatus ? "online":"Offline").foregroundColor(.orange)
            }
            Toggle(
                isOn:$isToggleStatus) {
                    Text("Show Status :")
                }.toggleStyle(SwitchToggleStyle(tint: Color.red))
                .padding(.horizontal,100)
        }
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Toggles_Previews: PreviewProvider {
    static var previews: some View {
        Toggles()
    }
}
