//
//  ListSwipeAction_SAwift.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct ListSwipeAction_SAwift: View {
    @State var friut:[String]=[
    "apple","Mango","banana","graps","lemon Water"
    ]
    var body: some View {
        List{
        ForEach(friut,id:\ .self){ friuts in
            Text("\(friuts.capitalized)")
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button("Delete"){
                        
                    }
                    .tint(.red)
                    Button("Save"){
                        
                    }
                    .tint(.blue)
                    Button("Archieve"){
                        
                    }
                    .tint(.orange)
                    
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    Button("Share"){
                        
                    }
                    .tint(.purple)
                }
        }
        }
    }
}

struct ListSwipeAction_SAwift_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeAction_SAwift()
    }
}
