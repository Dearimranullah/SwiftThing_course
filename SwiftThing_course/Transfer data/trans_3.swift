//
//  trans_3.swift
//  SwiftThing_course
//
//  Created by Apple1 on 30/11/2022.
//

import SwiftUI

struct trans_3: View {
    @EnvironmentObject var stdrecord:StdRecord
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            VStack{
                ForEach(stdrecord.iphoneVersion, id:\.self){ item in
                    VStack(spacing:20){
                        Text(item)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct trans_3_Previews: PreviewProvider {
    static var previews: some View {
        trans_3()
    }
}
