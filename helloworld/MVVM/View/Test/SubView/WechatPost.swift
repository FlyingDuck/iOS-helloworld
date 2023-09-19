//
//  WechatPost.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct WechatPost: View {
    
    var post : Post = randomPost()
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(post.avatar)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                .listRowSeparator(.hidden)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text(post.nickname)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(Color("wechatblue"))
                Text(post.content)
                    .font(.system(size: 13, weight: .regular, design: .rounded))
                Image(post.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/2, alignment: .center)
                    .clipped()
                
                HStack {
                    Text(post.pulishTime)
                        .font(.system(size: 12, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                    Spacer()
                    HStack {
                        ForEach(1...2, id: \.self) { num in
                            Circle()
                                .frame(width: 4, height: 5, alignment: .center)
                                .foregroundColor(Color("wechatblue").opacity(0.8))
                        }
                        
                    }
                    .padding(.all, 5)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                    
                }
                
            }
        }
        
    }
}

struct WechatPost_Previews: PreviewProvider {
    static var previews: some View {
        WechatPost()
    }
}
