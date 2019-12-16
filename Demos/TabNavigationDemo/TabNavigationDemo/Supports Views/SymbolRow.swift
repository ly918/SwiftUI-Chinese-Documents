//
//  SymbolRow.swift
//  TabNavigationDemo
//
//  Created by GNR on 2019/12/16.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct SymbolRow: View {
    
    var systemName : String
    var randomColor = Color.randomColor

    var body: some View {
        
        NavigationLink(destination: SymbolDetail(systemName: systemName, color: randomColor)) {
            
            HStack {
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: 44, height: 44)
                    .foregroundColor(randomColor)
                    
                Spacer()
                
                Text(systemName)
                    .foregroundColor(randomColor)
                
            }.padding(20)
            
        }
        
    }
}

struct SymbolRow_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRow(systemName: SystemSymbols[0])
    }
}
