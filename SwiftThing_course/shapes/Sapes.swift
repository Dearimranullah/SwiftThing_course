//
//  Sapes.swift
//  SwiftThing_course
//
//  Created by Apple1 on 27/01/2023.
//

import SwiftUI

struct Sapes: View {
    var body: some View {
        VStack {
                    Rectangle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(radius: 20.0, corners: [.topLeft])
                    
                    Rectangle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(radius: 20.0, corners: [.topLeft, .bottomLeft])
                    
                    Rectangle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(radius: 20.0, corners: [.allCorners])
                }
    }
}

struct Sapes_Previews: PreviewProvider {
    static var previews: some View {
        Sapes()
    }
}
struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}
