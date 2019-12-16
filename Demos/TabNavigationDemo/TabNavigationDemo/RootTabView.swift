//
//  RootTabView.swift
//  TabNavigationDemo
//
//  Created by GNR on 2019/12/16.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            
            SymbolsView(symbols: [])
                .tabItem{
                    Image(systemName: "0.circle.fill")
                    Text("Symbols")
                }
                .tag(0)
            
            SecondView()
                .tabItem{
                    Image(systemName: "1.circle.fill")
                    Text("Second")
                }
                .tag(1)
        }
        .edgesIgnoringSafeArea(.top)//这句话决定状态栏是否透明
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
