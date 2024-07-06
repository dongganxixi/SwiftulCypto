//
//  SwiftulCyptoApp.swift
//  SwiftulCypto
//
//  Created by 胡瑞兴 on 2024/7/5.
//

import SwiftUI

@main
struct SwiftulCyptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(false)
                   
            }
        }
    }
}
