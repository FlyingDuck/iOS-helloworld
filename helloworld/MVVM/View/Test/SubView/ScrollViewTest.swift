//
//  ScrollViewTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct ScrollViewTest: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: true) {
//            VStack {
//                ForEach(0...50, id: \.self) { _ in
//    //                randomColor().frame(height: 40, alignment: .center)
//                    randomColor().frame(width: 200, height: 40, alignment: .center)
//                }
//            }.frame(width: UIScreen.main.bounds.width)
//
//
//        }
        
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0...20, id: \.self) { num in
                    image_test(picture: "\(num)")
                    

                }
            }.frame(height: 300, alignment: .center)
        }
        
    }
}

struct ScrollViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTest()
    }
}
