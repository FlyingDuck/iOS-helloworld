//
//  SearchCalorieView.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/19.
//

import SwiftUI

class SearchCalorieViewModel : ObservableObject {
    @Published var keyword : String = ""
    @Published var resultStr : String = ""
}

extension SearchCalorieViewModel {
    
    func search() {
        
        let session = URLSession.shared
        
        let appid = "rgihdrm0kslojqvm"
        let secret = "WnhrK251TWlUUThqaVFWbG5OeGQwdz09"
        
        let url = URL(string: "https://www.mxnzp.com/api/food_heat/food/search?keyword=%E8%8B%B9%E6%9E%9C&page=1&app_id=\(appid)&app_secret=\(secret)")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { data, resp, err in
            if let data {
                let dataStr = String(data: data, encoding: .utf8) ?? ""
                print(dataStr)
                self.resultStr = dataStr
            }
            if let err {
                print(err)
            }
            
        }.resume()
        
        
    }
}

struct SearchCalorieView: View {
    @StateObject var searchCalorieVM : SearchCalorieViewModel = .init()
    
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
            
            Text(searchCalorieVM.resultStr)
        }
        .padding(.horizontal)
        
        
    }
}

struct SearchCalorieView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCalorieView()
    }
}
