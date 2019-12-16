//
//  SecondView.swift
//  TabNavigationDemo
//
//  Created by GNR on 2019/12/16.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @State var username = ""
    
    var body: some View {
        ScrollView {
            
            
            TextField("Username", text: $username)
                .background(Color.green)
                .font(.largeTitle)
            
            
        }
       .padding(.horizontal, 20)
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
