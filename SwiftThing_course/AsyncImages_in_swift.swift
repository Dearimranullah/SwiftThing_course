//
//  AsyncImages_in_swift.swift
//  SwiftThing_course
//
//  Created by Apple1 on 11/10/2022.
//

import SwiftUI

struct AsyncImages_in_swift: View {
    let url  = URL(string: "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
    
    let url1=URL(string: "https://www.shutterstock.com/image-photo/shooting-studio-behind-scenes-silhouette-images-1376226701")
    var body: some View {
//        AsyncImage(url: URL(string: "http://commondatastorage.googleapis.com/codeskulptor-assets/lathrop/debris1_brown.png"
//                           )
//        )
        
        AsyncImage(url:url) { Image in
            Image
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .cornerRadius(50)
        } placeholder: {
            ProgressView()
        }

    }
}

struct AsyncImages_in_swift_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImages_in_swift()
    }
}
