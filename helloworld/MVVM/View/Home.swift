//
//  Home.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct Home: View {
    @StateObject var tabVM: TabViewModel = .init()
    @ObservedObject var notifyVM = NotificationViewModel.shared

    var tabTitles: [String] = [
        "SwiftUI",
        "微信练习",
        "系统练习"
    ]

    var body: some View {
        NavigationStack {
            TabView(selection: $tabVM.tab) {
                SwiftUIManual()
                    .environmentObject(tabVM)
                    .tabItem {
                        Image(systemName: "swift")
                        Text("SwiftUI")
                    }
                    .tag(0)

                WechatPractice()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("微信练习")
                    }
                    .tag(1)
                SystemPractice()
                    .tabItem {
                        Image(systemName: "airtag")
                        Text("系统练习")
                    }
                    .tag(2)
            }
            .navigationTitle(tabTitles[tabVM.tab])
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Image(systemName: "gear")
                    .foregroundColor(.accentColor)
                    .onTapGesture {
                        tabVM.openSettingSheet = true
                    }
            }
            .sheet(isPresented: $tabVM.openSettingSheet) {
                // do nothing
            } content: {
                SettingView()
            }
            .background(alignment: .center, content: {})
            .onAppear(perform: {
                notifyVM.showNotify(text: "这是一条主页的弹窗")
            })
            .overlay {
                Text("tab-\(tabVM.tab)")
                    .font(.system(size: 120))
                    .foregroundColor(Color.red.opacity(0.1))
            }
        }
        .overlay(alignment: .top) {
            NotificationView()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
