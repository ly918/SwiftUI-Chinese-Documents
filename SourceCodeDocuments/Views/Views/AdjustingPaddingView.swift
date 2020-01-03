//
//  AdjustingPaddingView.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct AdjustingPaddingView: View {
    /// 5 - Adjusting the Padding of a View - 调整视图边距
    var body: some View {
        ZStack {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .border(Color.red, width: 2)
                .position(x: 100, y: 30)
                .padding()
            
        }
        .background(Color.gray)
        .padding([.leading,.trailing], 20) /// 5.3 使用指定的`Edge`集合内嵌填充指定大小。
        //        .padding()///  默认边距
        //        .padding(30) /// 5.1 将视图沿所有边缘内嵌填充指定的大小。
        //        .padding(EdgeInsets(top: 20, leading: 10, bottom: 60, trailing: 50)) /// 5.2 使用指定的`EdgeInsets`内嵌填充视图。
        
    }
}

struct AdjustingPaddingView_Previews: PreviewProvider {
    static var previews: some View {
        AdjustingPaddingView()
    }
}
