//
//  SystemPractice.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct SystemPractice: View {
    var body: some View {
        
        NavigationStack {
            List {
                
                NavigationLink {
                    ToggleTest()
                } label: {
                    Text("系统 - @State")
                }
                NavigationLink {
                    image_test()
                } label: {
                    Text("系统 - Image")
                }
                NavigationLink {
                    ButtonTest()
                } label: {
                    Text("系统 - Button")
                }
                NavigationLink {
                    VStackTest()
                } label: {
                    Text("系统 - VStack")
                }
                NavigationLink {
                    ListViewTest()
                } label: {
                    Text("系统 - ListView")
                }
                NavigationLink {
                    ScrollViewTest()
                } label: {
                    Text("系统 - ScollView")
                }
                NavigationLink {
                    VIPTag()
                } label: {
                    Text("系统 - 自定义组件 VIPTag")
                }
                NavigationLink {
                    WechatPost()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("系统 - 自定义组件 WechatPost")
                }
            }
//            .navigationTitle(Text("系统练习"))
//            .navigationBarTitleDisplayMode(.large)
            
        }
        
        
    }
}

struct SystemPractice_Previews: PreviewProvider {
    static var previews: some View {
        SystemPractice()
    }
}
