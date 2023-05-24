//
//  customdatatype.swift
//  SwiftThing_course
//
//  Created by Apple1 on 09/10/2022.
//

import SwiftUI
// MARK: We create model
struct Usermodel:Identifiable {
    let id:String = UUID().uuidString
    let username:String
    let userFathername:String
    let userId:Int
    let isVerified:Bool
}

struct customdatatype: View {
//    @State var Users:[String] = [
//    "Imran","Owaise","Osama","Feroz","Zeeshan","Arshad"
//    ]
    
    
    @State var Userperson:[Usermodel] = [
        Usermodel(username: "Imran Ullah", userFathername: "Rahmanullah", userId: 1, isVerified: true),
        Usermodel(username: "Asim", userFathername: "osama", userId: 2, isVerified: false),
        Usermodel(username: "Hussain", userFathername: "Nawaz", userId: 3, isVerified: true),
        Usermodel(username: "Asif", userFathername: "Aslam", userId: 4, isVerified: true)
    ]
    var body: some View {
        
        NavigationView{
            List{
                ForEach(Userperson){ users in
                    HStack(spacing:8){
                        Text("Ali")
                            .frame(width: 35, height: 35)
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .fill(.red)
                            )
                        VStack(alignment:.leading){
                            Text(users.username)
                                .font(.headline)
                            Text(users.userFathername)
                                .font(.caption)
                            

                        }
                        Spacer()
                        if users.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.green)
                        }
                        Text("\(users.userId)")
                            .font(.headline)
                }
                
            }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("User Names")
            .navigationBarItems(
                leading:Image(systemName: "heart.fill") ,
                               trailing: Image(systemName: "person"))
            
        }
    }
}

struct customdatatype_Previews: PreviewProvider {
    static var previews: some View {
        customdatatype()
    }
}
