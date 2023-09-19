//
//  IndicatorModel.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/10.
//

import SwiftUI

struct IndicatorModel {
    var toggle1Val: Bool = false
    var toggle2Val: Bool = true
    var pickerSelected: String = "opt1"
    var datapickerSelected: Date = .now
    var sliderNum: Float = 0.5
    var stepperCount: Int = 0
    var colorpickerSelect: Color = .accentColor
}
