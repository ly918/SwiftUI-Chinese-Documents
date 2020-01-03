//
//  PositioningAViews.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct PositioningAViews: View {
    /// 3  - Positioning a View - 定位视图
    var body: some View {
        ZStack {
            /// 3.1 将视图的中心固定在其父坐标空间的指定点上。
            Text("Hello, World!")
                .background(Color.red)
                .position(CGPoint(x: 100, y: 0))
            
            /// 3.2 将视图的中心固定在其父坐标空间中指定的坐标上。
            Text("Hello, World2")
                .background(Color.green)
                .position(x: 100, y: 30)
            
            /// 3.3 通过给定`Size`中的`width`和`height`偏移视图。
            Text("Hello, World3")
                .background(Color.red)
                .position(x: 100, y: 60)
                .offset(CGSize(width: 30, height: 0))
            
            /// 3.4 通过指定的`x`和`y`值偏移视图。
            Text("Hello, World4")
                .background(Color.green)
                .position(x: 100, y: 90)
                .offset(x: -30, y: 0)
            
        }
            .edgesIgnoringSafeArea(.top)/// 3.5 将视图延展到指定边缘的安全区域之外。
            .coordinateSpace(name: "test")/// 3.6 将名称分配给此视图的坐标空间，此视图的后代可以将其引用。
    }
}

struct PositioningAViews_Previews: PreviewProvider {
    static var previews: some View {
        PositioningAViews()
    }
}
