//
//  SearchCalorieViewModel.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/20.
//

import SwiftUI

class SearchCalorieViewModel: ObservableObject {
    @Published var keyword: String = ""
    @Published var resultStr: String = ""
    @Published var foods: [Food] = []
}

extension SearchCalorieViewModel {
    func search() {
        let session = URLSession.shared
        
        let appid = "jfho1jtmmpvwqy9q"
        let secret = "J1eFy0cHiQHS7et3CLSLmqM0mpPMcs9W"
        
        var urlStr = "https://www.mxnzp.com/api/food_heat/food/search?keyword=\(self.keyword)&page=1&app_id=\(appid)&app_secret=\(secret)"
        urlStr = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let url = URL(string: urlStr)!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { data, _, err in
            if let data {
                let dataStr = String(data: data, encoding: .utf8) ?? ""
//                print(dataStr)
                let jsonData = dataStr.data(using: .utf8, allowLossyConversion: false)!
                let decoder = JSONDecoder()
                do {
                    let response = try decoder.decode(Response.self, from: jsonData)
                    DispatchQueue.main.async {
                        self.resultStr = dataStr
                        self.foods = response.data.list
                    }
                } catch {
                    print("出异常了")
                }
                
            }
            if let err {
                print(err)
            }
            
        }.resume()
    }
}
