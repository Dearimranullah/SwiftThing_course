//
//  forloops.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI

struct forloops: View {
    var array = ["Asim","Waqar","Nawaz","Usman","Imran","Zeeshan"]
    var body: some View {
        VStack{
            ForEach(array,id: \.self) { index in
            Text("your name is : \(index)")
                    .frame(width: 200, height: 100)
                    .background(.orange)
                    .cornerRadius(15)
        }
        }
        
    }
        
}

struct forloops_Previews: PreviewProvider {
    static var previews: some View {
        forloops()
    }
}
