//
//  SFSymbolTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/8/26.
//

import SwiftUI

struct SFSymbolTest: View {
    var body: some View {
        VStack {
            Image(systemName: "paperplane.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, alignment: .center)
            Image(systemName: "airplane.arrival")
                .resizable()
                .scaledToFit()
                .frame(width: 50, alignment: .center)
            Image(systemName: "ferry.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, alignment: .center)
                .foregroundColor(.blue)
        }
        
    }
}

struct SFSymbolTest_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolTest()
    }
}
