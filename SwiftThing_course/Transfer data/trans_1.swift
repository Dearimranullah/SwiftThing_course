//
//  trans_1.swift
//  SwiftThing_course
//
//  Created by Apple1 on 30/11/2022.
//

import SwiftUI
struct Record:Identifiable{
    let id:String = UUID().uuidString
    let name:String
    let count:Int
}
class StdRecord:ObservableObject{
    @Published var iphoneVersion:[String]=[]
    @Published var stdRecordArray:[Record]=[
    Record(name: "Imran", count: 10)]
    init(){
        std()
        getiphone()
    }
    func getiphone(){
        iphoneVersion.append(contentsOf:[ "Iphone12","Iphone13","Iphone14","Iphone15"])
    }
    func std(){
        let sdt1=Record(name: "Hussain Ahamd", count: 22)
        let sdt2=Record(name: "Hussain Ahamd", count: 23)
        let sdt3=Record(name: "Hussain Ahamd", count: 223)
        let sdt4=Record(name: "Hussain Ahamd", count: 453)
        stdRecordArray.append(contentsOf: [sdt1,sdt2,sdt3,sdt4])
    }
}
struct trans_1: View {
    @StateObject var stdrecord:StdRecord=StdRecord()
    var body: some View {
        NavigationView {
            VStack{
//                List{
//                    ForEach(stdrecord.stdRecordArray) { stdn in
//                        HStack{
//                            Text(stdn.name)
//                            Text("\(stdn.count)")
//                            Spacer()
//                            Divider()
//                        }
//                    }.onDelete { IndexSet in
//                        stdrecord.stdRecordArray.remove(atOffsets: IndexSet)
//                    }
//                }
                List{
                    ForEach(stdrecord.iphoneVersion,id: \.self) { phone in
                        NavigationLink {
                            trans_2(item: phone)
                        } label: {
                            Text(phone)
                                .font(.largeTitle)
                        }

                    }
                }
            }
        }
        .environmentObject(stdrecord)
       
    }
    
}

struct trans_1_Previews: PreviewProvider {
    static var previews: some View {
        trans_1()
    }
}
