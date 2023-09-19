//
//  TabViewModel.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/10.
//

import SwiftUI

class TabViewModel: ObservableObject {
    @Published var tab: Int = 0
    @Published var openSettingSheet: Bool = false
}
