//
//  trans_2.swift
//  SwiftThing_course
//
//  Created by Apple1 on 30/11/2022.
//

import SwiftUI

struct trans_2: View {
    @State var value = ""
     var placeholder = "Select Client"
     var dropDownList = ["PSO", "PFA", "AIR", "HOT"]

    @State var nopeaple:[String]=["Imran","Asim","Usama","Irfan","Hmaza"]
    @State var name:String="Imran"
    @State var back:Color = .black
    @State var back1:Color = .green
    let item:String
//    @EnvironmentObject var stdrecord:StdRecord
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            VStack(spacing:100){
                Picker("", selection:$name) {
                    ForEach(nopeaple,id: \.self) { peaple in
                        Text(peaple)
                            .foregroundColor(.red)
                            .bold()
                    }
                }
                NavigationLink {
                    trans_3()
                } label: {
                    Text("\(item)")
                    .foregroundColor(.white)
                        .font(.largeTitle)
                        .background{
                            Circle()
                                .frame(width: 150,height: 150)
                        }

                }
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:20){
                        ForEach(1..<6) { index in
                                RoundedRectangle(cornerRadius: 10)
                                .fill(index==2 ? back1 : back)
                                .frame(width: 100,height: 100)
                    
                        }
                       
                    }
                }
                .padding(.horizontal,5)
                .frame(width: 230,height: 110)
                    .background(.red)
                    .flipsForRightToLeftLayoutDirection(true)
                    .environment(\.layoutDirection, .rightToLeft)
                
                   
                Menu {
                           ForEach(dropDownList, id: \.self){ client in
                               Button(client) {
                                   self.value = client
                               }
                           }
                       } label: {
                           VStack(spacing: 5){
                               HStack{
                                   Text(value.isEmpty ? placeholder : value)
                                       .foregroundColor(value.isEmpty ? .gray : .black)
//                                   Spacer()
                                   Image(systemName: "chevron.down")
                                       .foregroundColor(Color.red)
                                       .font(Font.system(size: 20, weight: .bold))
                               }
                               .padding(.horizontal)
                               Rectangle()
                                   .fill(Color.red)
                                   .frame(width: 120,height: 1)
                           }
                       }
                   
            }
        }
        
    }
}

struct trans_2_Previews: PreviewProvider {
    static var previews: some View {
        trans_2(item: "iphone")
    }
}
