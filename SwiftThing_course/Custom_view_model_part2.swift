//
//  Custom_view_model_part2.swift
//  SwiftThing_course
//
//  Created by Apple1 on 09/10/2022.
//

import SwiftUI
struct FruiteModel2:Identifiable {
    let  id:String = UUID().uuidString
    let  name:String
    let number:Int
}
class FruitViewModel:ObservableObject {
    
    @Published var friutearray:[FruiteModel2]=[]
    @Published var isLoading:Bool = false
    init(){
        getfriute()
    }
    func friutedelte(index:IndexSet){
        friutearray.remove(atOffsets:index )
        
    }
    func getfriute(){
        let fruite1=FruiteModel2(name: "Mango", number: 5)
        let fruite2=FruiteModel2(name: "Banana", number: 12)
        let fruite3=FruiteModel2(name: "Graps", number: 15)
        
//        for loading attributes
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
//            self.friutearray.append(contentsOf: [fruite1,fruite2,fruite3])
//           ********* Can also be written in the above line ************
            self.friutearray.append(fruite1)
            self.friutearray.append(fruite2)
            self.friutearray.append(fruite3)
            self.isLoading = false
        }
        
    }
}

struct Custom_view_model_part2: View {
//    @State var friutearray:[FruiteModel2]=[
//    FruiteModel2(name: "Apple", number: 10)
//    ]
    
//    **** @stateobject -> Use this for Creation /INIT
    //    **** @Observedobjet -> Use this for SubViews
//    @ObservedObject var  fruitViewModel:FruitViewModel=FruitViewModel()
   @StateObject var  fruitViewModel:FruitViewModel=FruitViewModel()
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                
                else
                {
                    ForEach(fruitViewModel.friutearray){ fruite in
                        HStack{
                            Text("\(fruite.number)")
                            Text(fruite.name)
                                .font(.headline)
                                .foregroundColor(.red)
                        }
                        
                    }
                    .onDelete(perform: fruitViewModel.friutedelte)
                }
                
            }
            .navigationTitle("Fruits names")
//            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing:
                                    NavigationLink(destination:Randomscreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
//            .onAppear{
//                fruitViewModel.getfriute()
//            }
        }
    }
}



// MARK: Second Screeen For @obervableobject

struct Randomscreen : View {
    @ObservedObject var  fruitViewModel:FruitViewModel
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                ForEach(fruitViewModel.friutearray) { fruite in
                    HStack{
                        Text("\(fruite.name)")
                        Text("\(fruite.number)")
                    }
                    
                }
            }
        }
    }
    
}
struct Custom_view_model_part2_Previews: PreviewProvider {
    static var previews: some View {
        Custom_view_model_part2()
    }
}
