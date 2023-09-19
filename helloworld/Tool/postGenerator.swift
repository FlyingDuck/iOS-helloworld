//
//  postGenerator.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/3.
//

import Foundation
import SwiftUI


func randomPost() -> Post {
    let nicknames : [String] = ["小美", "王美丽", "李大锤", "赵铁蛋", "吴老二", "周姐", "孙飞飞"]
    let avatars : [String] = ["p1","p2","p3","p4","p5","p6","p7",]
    let contents : [String] = [
        "做一个想做什么就能做什么的人。这样就不会在晴天阴天里彷徨。放手去做，充实今朝，昨日已成过去，明天充满神奇。",
        "别总听悲伤的歌，别总想从前的事，别让过去拖住脚，别让未来被辜负。",
        "永不期待，永不假设，永不强求。顺其自然，若是注定发生，必会如你所愿。",
        "每个女孩，都有自己的了不起。你的优秀，不需要任何人来证明。",
        "塑造自己，过程很疼，但你最终你能收获一个更好的自己。",
        "从今天开始，不论发生什么事，每天微笑吧。",
        "世上除了生死，都是小事儿，不管遇到什么烦心事，都不要自己为难自己。",
        "别人再好，也是别人。自己再也不堪，也是自己，独一无二的自己只要努力去做最好的自己，一生足矣。",
        "这是你生命中最好的年纪，身体健康，亲人安在，现世安稳。不要因为一件小事心情就一团糟。",
        " 你要相信总会有不期而遇的温暖，和生生不息的希望，在不经意间出现在你的生命里。",
        " 给自己时间，不要焦急，一步一步来，一日一日过，请相信生命的韧性是惊人的。跟自己向上的心去合作，不要放弃对自己的爱护。",
        " 太阳落了还会升起，不幸的日子总有尽头，过去是这样，将来也是这样。",
        "课堂之上，你扬起知识的风帆，勇往直前;寝室之中，你调动俏皮的细胞，快乐生活;青春路上，你张开智慧的翅膀，畅享人生。女生节到了，愿你的青春岁月无限美好!",
        "你的一颦一笑都让人沉醉不已，你的一举一动都让人万分着迷，你的一言一行都让人魂牵梦绕，你的一点一滴都让人心旷神怡。女生节到了，你就是我心中最美的女生。",
        "你的梦想是火热的，你的人生是灵动的，你的心灵是欢畅的，你的故事是温暖的，你的容颜是美丽的，你的心事是彩色的。女生节到了，真心祝愿你的一切都是美好的。",
        "女生节到了，愿甜蜜幸福缀满你的裙裾，愿热情奔放点亮你的眼眸，愿娇俏可人注满你的心田，愿洒脱乐观盈满你的笑脸，愿美丽的女生们今天是最闪亮的星级女主角。",
        "碧草依恋鲜花，细雨滋润嫩芽。阳光照耀枝丫，露珠青睐朝霞。轻风垂青风筝，女生总爱做梦。男生呵护女生，春来美梦都成。女生节到了，愿所有的女生们实现梦想。",
        "红苹果上的黑眸子，后背甩动的长辫子，嬉笑跑远的俏样子，空中萦绕的小曲子，流水一样的日子，你花一样的小妮子。女生节，祝福女生们节日快乐，美丽青春常在。",


    ]
    
    let id = UUID()
    
    let nameIndex = Int.random(in: 0..<nicknames.count)
    let nickname = nicknames[nameIndex]
    let avatar = avatars[nameIndex]
    
    let contentIndex = Int.random(in: 0..<contents.count)
    let content = contents[contentIndex] + id.uuidString
    
    let imageIndex = Int.random(in: 0..<24)
    let image = String(imageIndex)
    
    let num = Int.random(in: 2...24)
    
    return Post(id: id, nickname: nickname, avatar: avatar, content: content, imageName: image, pulishTime: "\(num)小时前")
}


func randomColor() -> Color {
    let red = Double.random(in: 0...1)
    let green = Double.random(in: 0...1)
    let bule = Double.random(in: 0...1)
    let opacity = Double.random(in: 0...1)
    
    return Color(red: red, green: green, blue: bule, opacity: opacity)
}
