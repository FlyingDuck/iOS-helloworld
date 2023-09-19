//
//  ContentView.swift
//  helloworld
//
//  Created by dongshujin on 2023/8/20.
//

import SwiftUI

struct WeChatBill: View {
    
    
    var body: some View {
        
        // 写法二
//        Color.gray
//            .opacity(0.18)
//            .ignoresSafeArea()
//            .overlay(alignment: .center) {
//                VStack {
//                    VStack(alignment: .center, spacing: 32){
//                        title
//                        price
//                        info
//                        bts
//                    }
//                    .padding()
//                    .background(Color.white.cornerRadius(.pi*2))
//                }
//                .padding()
//            }
        
        // 写法一
        ZStack{

            Color.gray
                .opacity(0.18)
                .ignoresSafeArea()

            VStack {
                VStack(alignment: .center, spacing: 32){
                    title
                    price
                    info
                    bts
                }
                .padding()
                .background(Color.white.cornerRadius(.pi*2))
            }
            .padding()
            //.background(Color.gray.opacity(0.18))
        }
        
        
        
    }
    
    var title: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack{
                Image("jobs")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32, alignment: .center)
                    .clipShape(Circle())
                Text("黑狗科技")
                Spacer()
            }
            Divider()
            HStack{
                Text("扣款凭证")
                Spacer()
            }
        }
    }
    
    var price: some View {
        VStack(alignment: .center, spacing: 12) {
            Text("扣费金额").foregroundColor(.gray)
            HStack(alignment: .top, spacing: 5){
                Text("￥")
                    .font(.custom("Oxygen-Bold", size: 24))
//                    .frame(width: 20, height: 20, alignment: .top)
                    .offset(x: 0, y: 4)
                Text("99.9")
                    .font(.custom("Oxygen-Bold", size: 30))
    //                .font(.largeTitle)
            }
            
        }
    }
    
    var info: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack{
                Text("扣费项目").foregroundColor(.gray).frame(width: 80, alignment: .leading)
                Text("黑狗科技 88 卡包月微信自动扣费")
                Spacer()
            }
            HStack{
                Text("支付方式").foregroundColor(.gray).frame(width: 80, alignment: .leading)
                Text("零钱")
                Spacer()
            }
            HStack{
                Text("收款机构").foregroundColor(.gray).frame(width: 80, alignment: .leading)
                Text("财付通支付科技有限公司")
                Spacer()
            }
            HStack(alignment: .top){
                Text("备注").foregroundColor(.gray).lineLimit(1).frame(width: 80, alignment: .leading)
                Text("你的黑狗科技账号（18766536567）扣费成功。如果对扣费有疑问，请联系商户确认")
                Spacer()
            }
        }
    }
    
    var bts: some View {
        VStack(alignment: .leading, spacing: 12){
            Divider()
            HStack{
                Text("管理扣费项目")
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 10, alignment: .center)
                    .foregroundColor(.gray.opacity(0.56))
            }
            Divider()
            HStack{
                Text("对订单有疑惑")
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 10, alignment: .center)
                    .foregroundColor(.gray.opacity(0.56))
            }
            Divider()
            HStack{
                Text("进入商家小程序")
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 10, alignment: .center)
                    .foregroundColor(.gray.opacity(0.56))
            }
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeChatBill()
    }
}
