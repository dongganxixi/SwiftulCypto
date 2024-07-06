//
//  CircleButtonAnimatinView.swift
//  SwiftulCypto
//
//  Created by 胡瑞兴 on 2024/7/6.
//

import SwiftUI

struct CircleButtonAnimatinView: View {
    @Binding var animate: Bool
    var body: some View {
       Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
            
        
    }
}

#Preview {
    CircleButtonAnimatinView(animate: .constant(false))
        .foregroundStyle(.red)
        .frame(width: 100, height: 100)
}
