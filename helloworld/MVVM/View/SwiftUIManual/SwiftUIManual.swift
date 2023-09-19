//
//  SwiftUIManual.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/10.
//

import SwiftUI

struct SwiftUIManual: View {
    @EnvironmentObject var tabVM: TabViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            List {
                NavigationLink {
                    IndicatorView()
                } label: {
                    Text("指示器集合")
                }
            }
            
            HStack(alignment: .center) {
                Spacer()
                Button {
                    tabVM.tab = 1
                } label: {
                    Text("微信练习")
                }
                Spacer()
                Button {
                    tabVM.tab = 2
                } label: {
                    Text("系统练习")
                }
                Spacer()
            }
            .padding(.bottom, 30)
        }
    }
}

struct SwiftUIManual_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SwiftUIManual()
        }
    }
}
