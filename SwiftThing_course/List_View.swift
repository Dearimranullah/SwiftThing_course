//
//  List_View.swift
//  SwiftThing_course
//
//  Created by Apple1 on 07/10/2022.
//

import SwiftUI

struct List_View: View {
    @State var friut:[String]=[
    "apple","Mango","banana","graps","lemon Water"
    ]
    
    @State var vegitable:[String]=[
    "Tomatu","Potato","Carrot","ghobi"
    ]
    var body: some View {
        NavigationView{
            List{
    //            Text("Hello Corrupt Pakistanio")
    //            Text("Hello Corrupt Pakistanio")
    //            Text("Hello Corrupt Pakistanio")
    //            Text("Hello Corrupt Pakistanio")
    //            Text("Hello Corrupt Pakistanio")
            Section(
                header: HStack{ Text("Friuts")
                        .foregroundColor(.orange)
                     Image(systemName: "flame.fill")
                        .foregroundColor(.orange)
                }
            ){
                ForEach(friut,id:\ .self){ friuts in
                    Text("\(friuts.capitalized)")
                }
                .onDelete(perform:delete)
                
    //                        { indexSet in
    //                delete(indexSet: indexSet)
    //                friut.remove(atOffsets: indexSet)
                    
    //            }
                    
                .onMove(perform: move)
                .listRowBackground(Color.gray)
//                .onMove { indices, newoffset in
//                    friut.move(fromOffsets: indices, toOffset: newoffset)
                    
                }
                Section(
                    header: Text("Vegitables")
                        .foregroundColor(.orange)){
                    ForEach(vegitable,id:\ .self){ vegitables in
                        Text("\(vegitables.capitalized)")
                    }
                    .onDelete(perform: { indexSet in
                        vegitable.remove(atOffsets: indexSet)
                        })
                    .onMove(perform: { IndexSet, Int in
                        vegitable.move(fromOffsets: IndexSet, toOffset: Int)
                    })
                    .listRowBackground(Color.gray)
                    }
            
            }
            .accentColor(.orange)
//            .listStyle(InsetGroupedListStyle())
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery Store")
            .navigationBarItems(leading: EditButton(), trailing:addButton
                .toolbar(content: {
                    Button {
                
                                            } label: {
                                                Label("Toggle SideBar",
                                              systemImage: "line.3.horizontal.circle.fill")
                                            }
                })
//                                    Button("Add", action: {
//                friut.append("Cocunat")
//            })
            )
        }
        .accentColor(.red)
    }
    var addButton:some View {
        Button("Add", action: {
friut.append("Cocunat")
            vegitable.append("Kadu")
})
    }
     
    func delete (indexSet:IndexSet){
        friut.remove(atOffsets: indexSet)
    }
    func move(indices:IndexSet,newoffset:Int){
        friut.move(fromOffsets: indices, toOffset: newoffset)
    }
}

struct List_View_Previews: PreviewProvider {
    static var previews: some View {
        List_View()
    }
}
