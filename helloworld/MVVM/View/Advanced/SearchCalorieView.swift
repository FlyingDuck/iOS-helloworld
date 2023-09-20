//
//  SearchCalorieView.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/19.
//

import SwiftUI

struct SearchCalorieView: View {
    @StateObject var searchCalorieVM: SearchCalorieViewModel = .init()

    var body: some View {
        VStack {
            Text("卡路里搜索")
                .foregroundColor(Color.blue)
                .font(.system(size: 25, weight: .black, design: .rounded))

            HStack {
                TextField("输入食物名称...", text: $searchCalorieVM.keyword)
                    .padding(20)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .accentColor(Color.red)
                Button {
                    searchCalorieVM.search()
                } label: {
                    Text("搜索")
                }
                .padding(.all, 20)
                .background(Color.blue.opacity(0.6))
                .foregroundColor(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            }

            List {
                ForEach(searchCalorieVM.foods, id: \.self.foodId) { food in
                    FoodListRowView(food: food)
                }
            }
            .scrollContentBackground(.hidden)
        }
        .padding(.horizontal)
    }
}

struct SearchCalorieView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCalorieView()
    }
}
