//
//  image_test.swift
//  helloworld
//
//  Created by dongshujin on 2023/8/26.
//

import SwiftUI

struct image_test: View {
    
    var picture : String = "marx"
    
    
    var body: some View {
        
//        Image("jobs")
//            .resizable()
//            .scaledToFill()
//            .ignoresSafeArea()
        
        VStack(spacing: 50) {
            Image(picture, bundle: .main)
                .resizable()
                .modifier(AvatarModifer())
//                .scaledToFill()
//                .frame(width: 120, height: 120, alignment: .center)
//                .clipShape(Circle())
//                .shadow(color: .red.opacity(0.8), radius: 30, x: 0, y: 0)
//                .shadow(color: .yellow.opacity(0.7), radius: 50, x: 0, y: 0)
//                .shadow(color: .blue.opacity(0.5), radius: 70, x: 0, y: 0)
//                .rotationEffect(Angle(degrees: 30))
//                .scaleEffect(1.5)
            
            VIPTag()
        }
        
        
    }
}




struct image_test_Previews: PreviewProvider {
    static var previews: some View {
        image_test()
    }
}


