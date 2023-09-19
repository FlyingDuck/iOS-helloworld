//
//  WechatPractice.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct WechatPractice: View {
    
//    @State var openSheet : Bool = false
    
    
    var body: some View {
        
    
        NavigationStack {
            List {
    
                NavigationLink {
                    WechatPublicTimeline()
                } label: {
                    Text("微信-朋友圈")
                }
                
                NavigationLink {
                    WechatTimeline()
                } label: {
                    Text("微信-我的朋友圈")
                }

                NavigationLink {
                    WeChatBill()
                } label: {
                    Text("微信-账单")
                }
                
            }
//            .listStyle(.sidebar)
            .navigationTitle(Text("微信练习"))
            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                Image(systemName: "gear")
//                    .foregroundColor(.accentColor)
//                    .onTapGesture {
//                        openSheet = true
//                    }
//            }
//            .sheet(isPresented: $openSheet) {
//                // do nothing
//            } content: {
//                SettingView()
//            }

        }
        
        
    }
}

struct WechatPractice_Previews: PreviewProvider {
    static var previews: some View {
        WechatPractice()
    }
}
