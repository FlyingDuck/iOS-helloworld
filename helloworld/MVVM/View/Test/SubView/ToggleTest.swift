//
//  ToggleTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct ToggleTest: View {
    
    @State var isOn : Bool  = false
    
    var body: some View {
        VStack {
            
            Group {
                if isOn {
                    Circle()
                } else {
                    Rectangle()
                }
            }
            .frame(width: isOn ? 200 : 100, height: isOn ? 200 : 100, alignment: .center)
            .animation(.spring(), value: isOn)
            
            Spacer()
            
            Toggle("开关", isOn: $isOn)
                .padding(20)
        }
        
    }
}

struct ToggleTest_Previews: PreviewProvider {
    static var previews: some View {
        ToggleTest()
    }
}
