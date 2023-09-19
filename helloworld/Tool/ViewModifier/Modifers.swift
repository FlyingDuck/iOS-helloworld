//
//  Modifers.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import Foundation
import SwiftUI

struct AvatarModifer: ViewModifier {
    var showShadow: Bool = true

    func body(content: Content) -> some View {
        if showShadow {
            content
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .clipShape(Circle())
                .shadow(color: .red.opacity(0.8), radius: 30, x: 0, y: 0)
                .shadow(color: .yellow.opacity(0.7), radius: 50, x: 0, y: 0)
                .shadow(color: .blue.opacity(0.5), radius: 70, x: 0, y: 0)
                .rotationEffect(Angle(degrees: 30))
                .scaleEffect(1.5)
        } else {
            content
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .clipShape(Circle())
                .rotationEffect(Angle(degrees: 30))
                .scaleEffect(1.5)
        }
    }
}


struct IndictorSectionHeaderModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .semibold, design: .rounded))
            .foregroundColor(Color.white)
            .padding(10)
            .background(Color.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}




extension View {
    func toAvatar(showShadow: Bool = true) -> some View {
        modifier(AvatarModifer(showShadow: showShadow))
    }
}

struct ModifersPreviews: PreviewProvider {
    static var previews: some View {
//        Image("jobs")
//            .resizable()
//            //            .modifier(makeAvatar(showShadow: false))
//            .toAvatar(showShadow: false)
        
        Text("button")
            .modifier(IndictorSectionHeaderModifier())
        
    }
}
