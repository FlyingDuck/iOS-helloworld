//
//  TextFiledTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct TextFieldTest: View {
    
    @State var username : String = ""
    @State var password : String = ""

    @State var pickedColor : Color = Color.blue
    @State var pickedDate : Date = .now
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            VStack {
                TextField("用户名", text: $username)
                    .padding(20)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 14.4, style: .continuous))
                    .accentColor(Color.red)
                 SecureField("密码", text: $password)
                    .padding(20)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 14.4, style: .continuous))
                    .accentColor(Color.red)
            }
            
            
            HStack(spacing: 40) {
                ColorPicker("选择颜色", selection: $pickedColor, supportsOpacity: true)
                    .padding(10)
                Spacer()
                Circle()
                    .foregroundColor(pickedColor)
            }
            
            DatePicker("选择日期", selection: $pickedDate)
            
            
        }
        
        
    }
}

struct TextFiledTest_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldTest()
    }
}
