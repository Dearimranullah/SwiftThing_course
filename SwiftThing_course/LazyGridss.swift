//
//  LazyGridss.swift
//  SwiftThing_course
//
//  Created by Apple1 on 05/10/2022.
//

import SwiftUI
struct Atems:Identifiable {
    let id:String = UUID().uuidString
    
    let name:String
    let number:Int
}

struct LazyGridss: View {
    @State var items:[Atems] = [
    Atems(name:"imran" , number: 1),
    Atems(name:"imran" , number: 2),
    Atems(name:"imran" , number: 3),
    Atems(name:"imran" , number: 4),
    Atems(name:"imran" , number: 5),
    Atems(name:"imran" , number: 6),
    Atems(name:"imran" , number: 7),
    Atems(name:"imran" , number: 8)
    ]
    let column : [GridItem] = [
        GridItem(.flexible(minimum: 100, maximum: 100), spacing: 15, alignment: nil),
        GridItem(.fixed(100), spacing: 15, alignment: nil),
        GridItem(.fixed(100), spacing: 15, alignment: nil),
    ]
    var body: some View {
        ScrollView(showsIndicators: true){
        LazyVGrid(columns:column){
            ForEach(items){ number in
                VStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.clear)
                        .frame( height: 100)
                        .border(Color.red,width: 1)
                        .overlay{
                            VStack{
                                Text("\(number.number)")
                                    .padding(.vertical)
                                Text(number.name)
                            }
                        }
                }
            }
        }
        }
    }
}

struct LazyGridss_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridss()
    }
}
