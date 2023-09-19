//
//  SettingView.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Image("marx")
                .resizable()
                .frame(width: 70, height: 70, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .padding(.top, 40)
            
            Text("卡尔·马克思")
                .font(.system(size: 16, weight: .heavy, design: .serif))
                .foregroundColor(Color.black.opacity(0.8))
            Text("v0.0.1")
                .font(.system(size: 15, weight: .thin, design: .monospaced))
                .foregroundColor(Color.gray)
            
            Spacer()
        }
        
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
