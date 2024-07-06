//
//  CircleButtonView.swift
//  SwiftulCypto
//
//  Created by 胡瑞兴 on 2024/7/6.
//

import SwiftUI

struct CircleButtonView: View {
    
    let  iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background {
                Circle()
                    .foregroundStyle(Color.theme.background)
            }
            .shadow(color: Color.theme.accent.opacity(0.25),
                    radius: 10, x: 0, y: 0)
            .padding()
    }
}

struct CircleButtonView_PreView: PreviewProvider{
    static var previews: some View{
        Group{
            CircleButtonView(iconName: "info")
                 .previewLayout(.sizeThatFits)
            
            CircleButtonView(iconName: "plus")
                 .previewLayout(.sizeThatFits)
                 .environment(\.colorScheme, .dark)
        }
    }
}
