//
//  NotificationViewModel.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/10.
//

import SwiftUI

class NotificationViewModel: ObservableObject {
    static let shared = NotificationViewModel()

    @Published var show: Bool = true

    var text: String = "<系统弹窗通知>"
}

extension NotificationViewModel {
    func showNotify(text: String) {
        withAnimation(.spring(response: 1, dampingFraction: 1, blendDuration: 1)) {
            self.show = true
            self.text = text
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            withAnimation(.spring()) {
                self.show.toggle()
            }
        })
    }

    func cancelNotify() {
        withAnimation(.spring(response: 1, dampingFraction: 1, blendDuration: 1)) {
            show = false
        }
    }
    
    func getText() -> String {
        return text
    }
}
