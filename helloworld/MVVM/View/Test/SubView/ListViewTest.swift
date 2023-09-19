//
//  ListViewTest.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/3.
//

import SwiftUI

struct ListViewTest: View {
    var body: some View {
        List {
            ForEach(1...5, id: \.self) {num in
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/ + "\(num)")
                    .swipeActions{
                        Button {
                            
                        } label: {
                            Image(systemName: "trash")
                        }
                        .tint(.red)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "save")
                        }
                        .tint(.green)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "tag")
                        }
                        .tint(.blue)
                    }
            }
        }
        
    }
}

struct ListViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ListViewTest()
    }
}
