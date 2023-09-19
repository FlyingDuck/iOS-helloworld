//
//  WechatTimeline.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/3.
//

import SwiftUI

struct WechatTimeline: View {
    var body: some View {
        List {
            Image("0")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .clipped()
                .listRowInsets(.init(top: 0, leading: 0, bottom: 20, trailing: 0))
                .overlay(alignment: .bottomTrailing) {
                    HStack {
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
                    .offset(x:0, y: 18)
                }
               
            
            Text("不装了,我是亿万富翁那我摊牌了!")
                .font(.system(size: 12, weight: .regular, design: .rounded))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            
            
            HStack(alignment: .top, spacing: 28) {
                Text("今天")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                Image(systemName: "camera")
                    .font(.system(size: 36, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.all, 20)
                    .frame(width: 77, height: 77, alignment: .center)
                    .background(Color.gray.opacity(0.2))
               
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么。今天依旧吃了超多苹果,还是没有中毒,王子也没有来,迪士尼什么时候营业?我好想回家。")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("4")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top, spacing: 20) {
                HStack(alignment: .bottom, spacing: 4) {
                    Text("31")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    Text("7月")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .padding(.bottom, 8)
                }
                HStack(alignment: .top, spacing: 4) {
                    Image("7")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 77, height: 77, alignment: .center)
                        .clipped()
                    Text("你想说点什么就说点什么")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .lineLimit(3)
                    
                    
                }
            
            }.listRowSeparator(.hidden)
            
//            HStack(alignment: .top, spacing: 20) {
//                HStack(alignment: .bottom, spacing: 4) {
//                    Text("31")
//                        .font(.system(size: 36, weight: .bold, design: .rounded))
//                    Text("7月")
//                        .font(.system(size: 14, weight: .regular, design: .rounded))
//                        .padding(.bottom, 8)
//                }
//                HStack(alignment: .top, spacing: 4) {
//                    Image("8")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 77, height: 77, alignment: .center)
//                        .clipped()
//                    Text("你想说点什么就说点什么")
//                        .font(.system(size: 16, weight: .regular, design: .rounded))
//                        .lineLimit(3)
//
//
//                }
//
//            }.listRowSeparator(.hidden)
            
        }
        .ignoresSafeArea()
        .listStyle(.plain)
        .refreshable {
            // 请求数据
        }
        
    }
}

struct WechatTimeline_Previews: PreviewProvider {
    static var previews: some View {
        WechatTimeline()
    }
}
