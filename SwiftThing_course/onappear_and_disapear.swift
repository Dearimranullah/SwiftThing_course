//
//  onappear_and_disapear.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct onappear_and_disapear: View {
    @State var count11:Int=0
    @State var textname:String="Imranullah"
    var body: some View {
        NavigationView{
            ScrollView{
                Text("Your name is : \(textname)")
                LazyVStack{
                    ForEach(0..<12){ _ in
                         RoundedRectangle(cornerRadius: 25)
                            .padding()
                            .frame(width: 300, height: 200)
                            .onAppear{
                                count11 += 1
                            }
                        
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    textname="HI imranullah this is OnAppear"
                }

            })
            .onDisappear(perform: {
                textname = "End Text"
            })
            .navigationTitle("On Appear count :\(count11) ")
        }
    }
}

struct onappear_and_disapear_Previews: PreviewProvider {
    static var previews: some View {
        onappear_and_disapear()
    }
}
