//
//  Custom_view_model.swift
//  SwiftThing_course
//
//  Created by Apple1 on 09/10/2022.
//

import SwiftUI
struct FruiteModel:Identifiable {
    let  id:String = UUID().uuidString
    let  name:String
    let number:Int
}

struct Custom_view_model: View {
    @State var friutearray:[FruiteModel]=[
    FruiteModel(name: "Apple", number: 10)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(friutearray){ fruite in
                    HStack{
                        Text("\(fruite.number)")
                        Text(fruite.name)
                            .font(.headline)
                            .foregroundColor(.red)
                    }
                    
                }
                .onDelete(perform: friutedelte)
            }
            .navigationTitle("Fruits names")
            .listStyle(GroupedListStyle())
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    getfriute()
                }
            })
        }
    }
    func friutedelte(index:IndexSet){
        friutearray.remove(atOffsets:index )
        
    }
    func getfriute(){
        let fruite1=FruiteModel(name: "Mango", number: 5)
        let fruite2=FruiteModel(name: "Banana", number: 12)
        let fruite3=FruiteModel(name: "Graps", number: 15)
        
        friutearray.append(fruite1)
        friutearray.append(fruite2)
        friutearray.append(fruite3)
    }
}

struct Custom_view_model_Previews: PreviewProvider {
    static var previews: some View {
        Custom_view_model()
    }
}
