//
//  VIPTag.swift
//  helloworld
//
//  Created by dongshujin on 2023/9/9.
//

import SwiftUI

struct VIPTag: View {
    var body: some View {
        
        ZStack {
            Text("VIP")
                .padding(.all, 5)
                .foregroundColor(.white)
                .background(Color.black)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
            

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 15, height: 15, alignment: .center)
                .foregroundColor(.orange)
                .rotationEffect(Angle(degrees: 45))
                .offset(x: 18, y: -16)
                .shadow(color: .orange, radius: 10, x: 5, y: -5)
        }
       
            
        
    }
}

struct VIPTag_Previews: PreviewProvider {
    static var previews: some View {
        VIPTag()
    }
}
