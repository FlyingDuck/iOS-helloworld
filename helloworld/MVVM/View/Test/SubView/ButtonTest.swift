//
//  ButtonTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct ButtonTest: View {
//    @State var text : String = "Hello, World! Hello Friends!"
    @State var post : Post = randomPost()
    
    var body: some View {
        
        
        
        VStack {
            Spacer()
//            Text(text)
//                .foregroundColor(.orange)
//                .font(.system(size: 20, weight: .bold, design: .monospaced))
//                .padding(.all, 20)
            
            WechatPost(post: post)
                .padding(20)
        
            
            Spacer()
            
            
            Button {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.2, blendDuration: 0.2)) {
                    post = randomPost()
                }
                
            } label: {
                Rectangle()
                    .frame(width: 240, height: 44, alignment: .center)
                    .clipShape(Capsule())
                    .overlay(alignment: .center){
                        Text("按钮")
                            .foregroundColor(.white)
                    }
            }

        }
        
        
    }
}

struct ButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTest()
    }
}
