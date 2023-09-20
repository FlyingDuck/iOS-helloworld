//
//  FoodListRowView.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/21.
//

import SwiftUI

struct FoodListRowView: View {
    var food : Food
    
    var body: some View {
        HStack {
            
            VStack(spacing: 10) {
                Text("\(food.name)")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
//                    .padding(.horizontal)
//                    .background(Color.blue.opacity(0.7))
                Text("\(food.calory)")
                    .font(.system(size: 15, weight: .heavy, design: .monospaced))
                    .underline(true, color: Color.blue)
            }
            
            Spacer()
            
            HStack {
                Text("健康指数:")
                    .font(.system(size: 15, weight: .light, design: .rounded))
                    .foregroundColor(Color.blue.opacity(0.6))
                Text("\(food.healthLevel)")
                    .padding(.all, 5)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .clipShape(Circle())
            }
        }
    }
}

struct FoodListRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListRowView(food: .init(foodId: "123", name: "牛肉汉堡", healthLevel: 10, calory: "234.56"))
    }
}
