//
//  paracticessss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct paracticessss: View {
    @State private var phone = ""
    @State private var age = ""
    @State private var name = ""
    @State private var securePhrase = ""
    @State private var email = ""
    var body: some View {
//         NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .clipShape(Circle())
                    .shadow(color: Color.black, radius: 2, x: 1, y: 1)
                    .overlay(Circle()
                        .stroke(Color.gray, lineWidth: 2))
         HStack {
             Image(systemName: "phone")
                 .foregroundColor(.gray)
                 .font(.headline)
             TextField("Phone number", text: $phone)
             .keyboardType(.phonePad)
             
         }
         .padding()
         .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(Color.gray, lineWidth: 1)
         )
         .padding(.horizontal)
         HStack {
             Image(systemName: "person")
                 .foregroundColor(.gray).font(.headline)
             TextField("Age", text: $age)
             .keyboardType(.numberPad)
             
         }
         .padding()
         .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(Color.gray, lineWidth: 1))
         .padding(.horizontal)
         HStack {
             Image(systemName: "pencil")
                 .foregroundColor(.gray).font(.headline)
             
             TextField("Name", text: $name)
             .keyboardType(.alphabet)
             
         }
         .padding()
         .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(Color.gray, lineWidth: 1))
         .padding(.horizontal)
         HStack {
             Image(systemName: "lock.doc.fill")
                 .foregroundColor(.gray).font(.headline)
             TextField("Secure Phrase", text: $securePhrase)
             .keyboardType(.asciiCapable)
             
         }
         .padding()
         .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1)
         )
         .padding(.horizontal)
         HStack {
             Image(systemName: "envelope")
                 .foregroundColor(.gray)
                 .font(.headline)
             TextField("Email", text: $email)
                 .keyboardType(.emailAddress)
             
         }
         .padding()
         .overlay(
            RoundedRectangle(cornerRadius: 8)
            .stroke(Color.gray, lineWidth: 1))
         .padding(.horizontal)
                
                HStack {
                 Button(action: {}) {
                     Label("Sign Up", systemImage: "pencil.and.outline")
                     
                 }
                .buttonStyle(.borderedProminent)
                 Button(action: {}) {
                     Label("Cancel", systemImage: "pencil.slash")
                     
                 }
                .buttonStyle(.bordered)
                 
             }
                
            }.padding(.bottom,50)
//        }
        
    }
}






struct paracticessss_Previews: PreviewProvider {
    static var previews: some View {
        paracticessss()
    }
}
