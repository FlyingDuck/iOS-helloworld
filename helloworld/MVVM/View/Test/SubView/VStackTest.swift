//
//  VStackTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/8/20.
//

import SwiftUI

struct VStackTest: View {
    var body: some View {
        
        
//        VStack(alignment: .trailing, spacing: 40) {
//            Text("HhHHHHHHHHHHHHHHHHHHHello, World!")
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        }
        
        
        VStack(alignment: .leading, spacing: 3) {
            Text("999.999")
                .foregroundColor(.black)
                .font(.custom("Oxygen-Bold", size: 40))
                .padding()
                .background(Color.green.cornerRadius(12))
                .padding()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello, World!")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct VStackTest_Previews: PreviewProvider {
    static var previews: some View {
        VStackTest()
    }
}
