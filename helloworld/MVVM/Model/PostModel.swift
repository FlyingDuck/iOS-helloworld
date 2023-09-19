//
//  PostModel.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/3.
//

import Foundation


struct Post {
    let id : UUID
    var nickname : String
    var avatar : String
    var content : String
    var imageName: String
    var pulishTime : String
}

let posts : [Post] = (1...20).map { _ in
    randomPost()
}
//[
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//        randomPost(),
//]
