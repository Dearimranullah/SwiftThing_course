//
//  focus'.swift
//  SwiftThing_course
//
//  Created by Apple1 on 30/11/2022.
//

import SwiftUI

struct focus_: View {
    @AppStorage("name") var  username:String?
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.red)
                .frame(width: 150,height: 150)
                .overlay{
                    VStack{
                        Text(username ?? "Imran Ullah")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        if let names=username {
                            Text(username ?? "Imran")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        Button {
                            username="Brother"
                        } label: {
                            Text("Click")
                        }
                    }

                    
                }
        }
    }
}

struct focus__Previews: PreviewProvider {
    static var previews: some View {
        focus_()
    }
}
