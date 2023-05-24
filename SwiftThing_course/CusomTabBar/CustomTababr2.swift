//
//  CustomTababr2.swift
//  SwiftThing_course
//
//  Created by Apple1 on 27/01/2023.
//
// This is vedio link which help me  to create this custom bar
//https://www.youtube.com/watch?v=vzQDKYIKEb8
//This is the other link which help me to chage the page which idex of tab bar
//https://medium.com/devtechie/custom-tabbar-in-swiftui-ios-15-652245f58820

import SwiftUI
// ******** PART 1
// this is the main where  we just call the custom tab bar
enum Tab: String, CaseIterable {
    case house,message,person,leaf
}
    struct CustomTababr2: View {
        @State var tabitems=Tab.allCases
        @State private var selectedtab:Tab = .house
        init() {
            UITabBar.appearance().isHidden=true
        }
        var body: some View {
            ZStack{
                VStack{
                    TabView(selection:$selectedtab){
                    Text("Hello World")
                            .tag(tabitems[0])
                        Text("Second")
                            .tag(tabitems[1])
                       Text("Third")
                            .tag(tabitems[2])
                        
                    }
                }
                VStack{
                    Spacer()
                    Custom(selectedTab: $selectedtab)
                }
            }
        }
    }

    struct CustomTababr2_Previews: PreviewProvider {
        static var previews: some View {
            CustomTababr2()
        }
    }


// ****** Part 2 OR Page
struct Custom: View {
    @Binding var selectedTab:Tab
    private var fillImage:String {
        selectedTab.rawValue + ".fill"
    }
    var body: some View {
        VStack {
            HStack {
                ForEach (Tab.allCases,id: \.rawValue) { tab in
                    Spacer()
                    VStack(spacing:0){
                        Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                            .resizable()
                            .frame(width: 30,height: 30)
                            .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                            .onTapGesture {
                                withAnimation (.easeIn(duration: 0.1)){
                                    selectedTab = tab
                                }
                            }
                        Text(tab.rawValue)
                            .font(.system(size: 10))
                        Spacer()
                    }
                }
            }
            .frame(width: nil,height: 60,alignment: .bottom)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
       
    }
}

