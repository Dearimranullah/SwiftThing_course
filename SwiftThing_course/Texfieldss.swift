//
//  Texfieldss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 07/10/2022.
//

import SwiftUI
struct Texfieldss: View {
    @State var TextFieldNames:String = ""
    @State var dataArray:[String]=[]
    var body: some View {
        NavigationView{
            VStack{
                TextField("Enter your name", text: $TextFieldNames)
//                    .frame(maxWidth:.infinity)
                    .padding()
                    .foregroundColor(.red)
                    .background(.gray)
                    .cornerRadius(10)
                    .font(.headline)
                Button {
                    dataArray.append(TextFieldNames)
                } label: {
                    Text("Save")
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(.blue)
                        .cornerRadius(20)
                        .foregroundColor(.red)
                        .font(.headline)
                }
                ForEach(dataArray, id: \.self){ data in
                    Text(" your name is : \(data)")
                        .font(.headline)
                    
                }
                  Spacer()
            }
            .padding(.top,20)
            .navigationTitle("TextField")
            
        }
    }
}

struct Texfieldss_Previews: PreviewProvider {
    static var previews: some View {
        Texfieldss()
    }
}
