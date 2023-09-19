//
//  WechatPublicTimeline.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/3.
//

import SwiftUI

struct WechatPublicTimeline: View {
    var body: some View {
        List {
            Image("0")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .clipped()
                .listRowInsets(.init(top: 0, leading: 0, bottom: 50, trailing: 0))
                .overlay(alignment: .bottomTrailing) {
                    NavigationLink {
                        WechatTimeline()
                    } label: {
                        HStack {
                            Spacer()
                            Text("王多鱼")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                            Image("wangduoyu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 77, height: 77, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        }
                        .padding(.trailing, 10)
                        .offset(x: 0, y: 18)
//                        .frame(maxWidth: UIScreen.main.bounds.width, alignment: .trailing)
                    }
                }

            ForEach(posts, id: \.id) { post in
                WechatPost(post: post)
                    .padding(.bottom, 16)
                    .overlay(alignment: .bottom) {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width)
                    }
                    .listRowSeparator(.hidden)
            }
        }
        .ignoresSafeArea()
        .listStyle(.plain)
        .refreshable {
            // 请求数据
        }
    }
}

struct WechatPublicTimeline_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            WechatPublicTimeline()
        }
    }
}
