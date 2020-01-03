//
//  BorderView.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct BorderView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "triangle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green)
                .border(Color.red, width: 5)
            
            Text("哈")
                .font(Font.system(size: 80))
                .foregroundColor(Color.black)
                .border(Color.red, width: 5)
        }
        
        
    }
}

struct BorderView_Previews: PreviewProvider {
    static var previews: some View {
        BorderView()
    }
}

