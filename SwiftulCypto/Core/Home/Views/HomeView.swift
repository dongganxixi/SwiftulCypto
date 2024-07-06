//
//  HomeView.swift
//  SwiftulCypto
//
//  Created by 胡瑞兴 on 2024/7/6.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showProtfolio: Bool = false
    
    var body: some View {
        ZStack{
            
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
            
        }
    }
}

/// 预览当前视图
struct HomeView_PreView: PreviewProvider{
    static var previews: some View{
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
// -MARK: - 设置一个extension，让 var body：不过于冗长
extension HomeView{
    private var  homeHeader : some View{
        HStack(content: {
            CircleButtonView(iconName: showProtfolio ? "plus" : "info" )
                .transaction { transaction in
                    transaction.animation = nil
                }
                .background(
                    CircleButtonAnimatinView(animate: $showProtfolio)
                )
            Spacer()
            Text(showProtfolio ? "Portfolio" : "Live Prices" )
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.theme.accent)
                .transaction { transaction in
                    transaction.animation = nil
                }
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showProtfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring) {
                        showProtfolio.toggle()
                    }
                }
        })
        .padding(.horizontal)
    }
}
