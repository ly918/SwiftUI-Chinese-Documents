//
//  SymbolDetail.swift
//  TabNavigationDemo
//
//  Created by GNR on 2019/12/16.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct SymbolDetail: View {
    var systemName : String
    
    var color : Color
    
    var body: some View {
        
        ScrollView {
            
            Image(systemName: systemName)
                .resizable()
                .frame(width: 44, height: 44)
                .foregroundColor(color)
            
            Text(systemName)
                .foregroundColor(color)
            

        }
        .navigationBarTitle(Text(systemName))
    
    }

}

struct SymbolDetail_Previews: PreviewProvider {
    static var previews: some View {
        SymbolDetail(systemName: SystemSymbols[0], color: Color.blue)
    }
}
