//
//  CalorieModel.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/20.
//

import SwiftUI

struct Response: Codable {
    let code: Int
    let msg: String
    let data: Data
}

struct Data: Codable {
    let page: Int
    let totalCount: Int
    let totalPage: Int
    let limit: Int
    let list: [Food]
}

struct Food: Codable {
    let foodId: String
    let name: String
    let healthLevel: Int
    let calory: String
}
