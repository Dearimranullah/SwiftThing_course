//
//  FocusIN_Swift.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI
// MARK: Confusing Occure will see Next time
struct FocusIN_Swift: View {
    enum Onformvalidation:Hashable{
        case  username , userpassword
    }
    @State var nameField: String = ""
    @FocusState var isnamefocus:Bool
    @State var passwordField: String = ""
    @FocusState var ispasswordfocus:Bool
    @FocusState var fieldInFocus: Onformvalidation?
//    @State var name:String = ""
    var body: some View {
        VStack (spacing:30){
            TextField("Enter Your name here", text: $nameField)
                .focused($fieldInFocus, equals: .username)
//                .focused($isnamefocus)
                .frame(width: 300, height: 40)
                .padding()
                .background(Color.gray.brightness(0.3))
                .cornerRadius(20)
            
            TextField("Enter Your Password here", text: $passwordField)
                .focused($fieldInFocus, equals: .userpassword)
//                .focused($ispasswordfocus)
                .frame(width: 300, height: 40)
                .padding()
                .background(Color.gray.brightness(0.3))
                .cornerRadius(20)
            
            Button("Signe UP"){
                let usernameIsValid = !nameField.isEmpty
                let userpasswordIsvalid = !passwordField.isEmpty
                if usernameIsValid && userpasswordIsvalid
                {
                    print("SigneUp")
                }
                else if usernameIsValid
                {
                    fieldInFocus = .userpassword
//                    isnamefocus = false
//                    ispasswordfocus = true
                }
                else {
                    fieldInFocus = .username
//                    isnamefocus = true
//                    ispasswordfocus = false
                }
            }
            
//            Button("Focus Button"){
//                isfocus.toggle()
//            }
        }
        
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                self.isfocus = true
//            }
//        }
    }
}

struct FocusIN_Swift_Previews: PreviewProvider {
    static var previews: some View {
        FocusIN_Swift()
    }
}
