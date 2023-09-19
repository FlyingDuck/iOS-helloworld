//
//  IndicatorView.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/10.
//

import SwiftUI

struct IndicatorView: View {
    @StateObject var indicatorVM: IndicatorViewModel = .init()

    @ObservedObject var notifyVM = NotificationViewModel.shared

    var body: some View {
        List {
            Button("弹出通知") {
                notifyVM.showNotify(text: "你触发了一条弹窗通知")
            }

            progressGroup
            sliderGroup
            toggleGroup
            pickerGroup
            dataPickerGroup
            stepperGroup
            colorpickerGroup
        }
    }

    var progressGroup: some View {
        Section {
            ProgressView()
            ProgressView("加载中", value: indicatorVM.data.sliderNum, total: 100)

        } header: {
            Text("ProgressView").modifier(IndictorSectionHeaderModifier())
        } footer: {
            Text("...")
        }
    }

    var toggleGroup: some View {
        Section {
            Toggle("开关 1", isOn: $indicatorVM.data.toggle1Val)
            Toggle("开关 2", isOn: $indicatorVM.data.toggle2Val).tint(Color.accentColor)
        } header: {
            Text("Toggle")
                .modifier(IndictorSectionHeaderModifier())
        } footer: {
            Text("...")
        }
    }

    var pickerGroup: some View {
        Section {
            Picker("选择器", selection: $indicatorVM.data.pickerSelected) {
                Text("选项 - 1").tag("opt1")
                Text("选项 - 2").tag("opt2")
                Text("选项 - 3").tag("opt3")
            }

            Picker("选择器", selection: $indicatorVM.data.pickerSelected) {
                Text("选项 - 1").tag("opt1")
                Text("选项 - 2").tag("opt2")
                Text("选项 - 3").tag("opt3")
            }.pickerStyle(.segmented)

            Picker("选择器", selection: $indicatorVM.data.pickerSelected) {
                Text("选项 - 1").tag("opt1")
                Text("选项 - 2").tag("opt2")
                Text("选项 - 3").tag("opt3")
            }.pickerStyle(.wheel)

            Picker("选择器", selection: $indicatorVM.data.pickerSelected) {
                Text("选项 - 1").tag("opt1")
                Text("选项 - 2").tag("opt2")
                Text("选项 - 3").tag("opt3")
            }.pickerStyle(.inline)
        } header: {
            Text("Picker").modifier(IndictorSectionHeaderModifier())
        }
    }

    var dataPickerGroup: some View {
        Section {
            DatePicker("日期选择器", selection: $indicatorVM.data.datapickerSelected)
            DatePicker("日期选择器", selection: $indicatorVM.data.datapickerSelected).datePickerStyle(.wheel)
            DatePicker("日期选择器", selection: $indicatorVM.data.datapickerSelected).datePickerStyle(.graphical)
        } header: {
            Text("DatePicker").modifier(IndictorSectionHeaderModifier())
        }
    }

    var sliderGroup: some View {
        Section {
            Slider(value: $indicatorVM.data.sliderNum, in: 0 ... 100) {} minimumValueLabel: {
                Text("min: 1")
            } maximumValueLabel: {
                Text("max: 10")
            } onEditingChanged: { _ in
            }
            Text("val: \(indicatorVM.data.sliderNum)")

        } header: {
            Text("Slider").modifier(IndictorSectionHeaderModifier())
        }
    }

    var stepperGroup: some View {
        Section {
            Stepper {
                Text("步数：\(indicatorVM.data.stepperCount)")
            } onIncrement: {
                indicatorVM.data.stepperCount += 1
            } onDecrement: {
                indicatorVM.data.stepperCount -= 1
            } onEditingChanged: { _ in
            }

        } header: {
            Text("Stepper").modifier(IndictorSectionHeaderModifier())
        }
    }

    var colorpickerGroup: some View {
        Section {
            ColorPicker("颜色", selection: $indicatorVM.data.colorpickerSelect, supportsOpacity: true)

        } header: {
            Text("ColorPicker").modifier(IndictorSectionHeaderModifier())
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView()
    }
}
