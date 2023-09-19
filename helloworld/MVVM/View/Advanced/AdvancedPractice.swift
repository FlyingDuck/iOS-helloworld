//
//  AdvancedPractice.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/19.
//

import SwiftUI

struct AdvancedPractice: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    SearchCalorieView()
                } label: {
                    Text("网咯请求")
                }

            }
            .navigationTitle(Text("进阶练习"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AdvancedPractice_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedPractice()
    }
}
