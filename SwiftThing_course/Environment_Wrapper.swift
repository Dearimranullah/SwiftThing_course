//
//  Environment_Wrapper.swift
//  SwiftThing_course
//
//  Created by Apple1 on 09/10/2022.
//

import SwiftUI
class EnvironmentViewModel: ObservableObject {
    @Published var  dataarray:[String] = []
    init(){
        getdata()
    }
    
    func getdata(){
        self.dataarray.append(contentsOf: ["Iphone","Apple","Mac","Iphad","Mac Computer"])
    }
    
}
struct Environment_Wrapper: View {
    @StateObject var viewmodelEnvi:EnvironmentViewModel=EnvironmentViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewmodelEnvi.dataarray,id:\.self){ item in
                    NavigationLink(destination:DetailView(
//  When declare environmentobjet in navigation view  end there is no need of the following line
//                        viewmodelEnvi: viewmodelEnvi, seleteditem: item
                         seleteditem: item
                    
                    ) ,
                                   label: {
                        Text (item)
                    })
                }
            }
            .navigationTitle("IOS Devices")
        }
//         We add environment obeject because to access in any view directly
        .environmentObject(viewmodelEnvi)
    }
}
struct DetailView :View {
//    @ObservedObject var viewmodelEnvi:EnvironmentViewModel
//    @StateObject var namess:EnvironmentViewModel=EnvironmentViewModel()
    let seleteditem:String
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            NavigationLink(destination: FinalScreen(
//                When declare environmentobjet in navigation view  end there is no need of the following line
//                viewmodelEnvi: viewmodelEnvi
            ), label: {
                Text(seleteditem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            })
            
        }
    }
}
struct FinalScreen:View {
// When declare environmentobjet in navigation view  end there is no need of the following line When declare environmentobjet in navigation view  end there is no need of the following line
//    @ObservedObject var viewmodelEnvi:EnvironmentViewModel
    @EnvironmentObject var viewmodelEnvi:EnvironmentViewModel
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            List{
                ForEach(viewmodelEnvi.dataarray,id:\.self){ item in
                    Text(item)
                        .foregroundColor(.black)
                        .font(.headline)
                }
            }
        }
    }
}

struct Environment_Wrapper_Previews: PreviewProvider {
    static var previews: some View {
        Environment_Wrapper()
    }
}
