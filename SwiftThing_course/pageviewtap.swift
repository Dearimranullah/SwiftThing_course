//
//  pageviewtap.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct pageviewtap: View {
    let  iconss:[String]=[
    "heart.fill","globe","house.fill","person.fill","bicycle.circle.fill"
    ]
//     MARK: Strating body
    
    var body: some View {
        NavigationView{
            ZStack {
                TabView{
                    Text("HomePage")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    Text("Globe View")
                        .tabItem {
                            Image(systemName: "globe")
                            Text("Home")
                        }
                    Text("Heart View")
                        .tabItem {
                            Image(systemName: "bolt.heart.fill")
                            Text("Home")
                        }
                    Text("Airport")
                        .tabItem {
                            Image(systemName: "airplane")
                            Text("Home")
                        }
                }
                .accentColor(.red)
                ZStack(){
                    VStack{
                TabView{
                    ForEach(iconss,id:\.self){ icons in
                        Image(systemName: icons)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.red)
                        
                    }
                    
        //            RoundedRectangle(cornerRadius: 25.0)
        //                .foregroundColor(.red)
        //            RoundedRectangle(cornerRadius: 25.0)
        //            RoundedRectangle(cornerRadius: 25.0)
        //                .foregroundColor(.orange)
                        
                }
                .background(
                    AngularGradient(
                        colors: [Color.red,Color.yellow,Color.black,Color.brown],
                        center: .center,
                        angle: .degrees(90)
                                   )
                    .cornerRadius(20)
                )
                .tabViewStyle(PageTabViewStyle())
                .padding(.horizontal,20)
                .frame(width: 300, height: 200)
                        Spacer()
                    }
                    
                }
            }
            .navigationBarTitle("Documentation")
            .navigationBarItems(trailing: Image(systemName: "heart.fill"))
            .navigationBarItems(leading: Image(systemName: "house.fill"))
        }
       
        
    }
}

struct pageviewtap_Previews: PreviewProvider {
    static var previews: some View {
        pageviewtap()
    }
}
