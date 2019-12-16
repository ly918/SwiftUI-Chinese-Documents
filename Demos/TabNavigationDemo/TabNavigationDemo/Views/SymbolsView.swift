//
//  SymbolsView.swift
//  TabNavigationDemo
//
//  Created by GNR on 2019/12/16.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct SymbolsView: View {
    
    @State var symbols : [String]
    @State var loading = false
    
    
    func loadSymbols() {
        guard symbols.count == 0 else {
            return
        }
        
        loading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.symbols = SystemSymbols
            
            self.loading = false
        }

    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {

                List(symbols, id: \.self) {
                        
                    SymbolRow(systemName: $0)
                        
                }
                .navigationBarTitle(Text("Symbols"))
                
                LoadingView(loading: loading)

            }
        
        }
        .onAppear(perform: loadSymbols)
        .onDisappear {
            print("onDisappear")
        }
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsView(symbols: [])
    }
}
