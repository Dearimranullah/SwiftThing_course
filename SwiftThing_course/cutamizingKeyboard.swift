//
//  cutamizingKeyboard.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct cutamizingKeyboard: View {
    @State var fathername:String = ""
    @State var namess:String = ""
    @State var passwordss:String = ""
    var body: some View {
        VStack(spacing:30){
            
            TextField("Enter the name", text: $fathername)
                .padding()
                .padding(.horizontal)
                .submitLabel(.next)
                .onSubmit {
                   print("HI first")
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke()
                        .padding(.horizontal)
                )
            
//            ********
            
            TextField("Enter the name", text: $namess)
                .padding()
                .padding(.horizontal)
                .submitLabel(.route)
                .onSubmit {
                   print("HI Secnd")
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke()
                        .padding(.horizontal)
                )
            
//            *************
            SecureField("Enter the name", text: $passwordss)
                .padding()
                .padding(.horizontal)
                .submitLabel(.search)
                .onSubmit {
                   print("HI Third")
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke()
                        .padding(.horizontal)
                )
            
            
            
//            *****
            Circle()
                .fill(.red.opacity(0.4))
                .frame(width: 200, height: 200)
                .background(
                Circle()
                    .fill(.orange)
                    .frame(width: 220, height: 220)
                     .overlay(
                        Circle()
                            .fill(.green)
                            .frame(width: 110, height: 110)
                            .overlay(
                            Text("5")
                            )
                        ,alignment: .topTrailing
                    )
                )
                
        }
    }
}

struct cutamizingKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        cutamizingKeyboard()
    }
}
