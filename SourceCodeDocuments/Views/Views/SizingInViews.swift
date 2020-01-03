//
//  SizingInViews.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct SizingInViews: View {
    /// 2 - Sizing a Views - 制定视图大小
    var body: some View {
        VStack {
            /// 2.1 将视图定位在具有指定大小的不可见框架中。
            Text("Hello, World!")
                .background(Color.yellow)
                .border(Color.red, width: 2)
                .frame(width: 200, height: 50, alignment: .topLeading)
            
            /// 2.2 将视图定位在具有指定宽度和高度的不可见框架中。
            Text("Hello, World 2Hello, World 2Hello, World 2Hello, World 2Hello, World 2Hello, World 2Hello")
                .background(Color.yellow)
                .border(Color.red, width: 2)
                .frame(minWidth: 10, idealWidth: 60, maxWidth: 300, minHeight: 10, idealHeight: 60, maxHeight: 300, alignment: .topTrailing)
            
            /// 2.3 将视图固定在其理想大小。
            Text("Hello, World3")
                .background(Color.yellow)
                .border(Color.red, width: 2)
                .fixedSize()
            
            /// 2.4 将视图修复为理想大小，可指定垂直或水平方向的修复。
            Text("Hello, World4Hello, World4HelloHello, World4Hello, World4HelloHello")
                .background(Color.yellow)
                .border(Color.red, width: 2)
                .fixedSize(horizontal: true, vertical: false)
                .frame(width: 200, height: 200)
            
            /// 2.5 指定布局优先级 默认为0
            Text("Hello, World5")
                .background(Color.yellow)
                .border(Color.red, width: 2)
                .layoutPriority(1)
            
        }
    }
}

struct SizingInViews_Previews: PreviewProvider {
    static var previews: some View {
        SizingInViews()
    }
}
