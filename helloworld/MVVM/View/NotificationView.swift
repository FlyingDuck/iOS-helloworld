//
//  NavigationView.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/10.
//

import SwiftUI

struct NotificationView: View {
    
    @ObservedObject var notifyVM = NotificationViewModel.shared
    
    var body: some View {
        if notifyVM.show {
            HStack {
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .foregroundColor(Color.yellow) // 环境注入
                    .frame(width: 25, height: 25, alignment: .center)
                Text(notifyVM.getText()).foregroundColor(Color.black.opacity(0.7))
                Spacer()
                Image(systemName: "xmark")
                    .onTapGesture {
                        notifyVM.cancelNotify()
                    }
            }
            .padding()
            .background(Color.yellow.opacity(0.4))
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
            .padding()
            .transition(.offset(y: -120))
        }
        
        
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            NotificationView()
        }.background(Color.black)
    }
}
