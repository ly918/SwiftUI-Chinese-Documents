//
//  AligningViews.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct AligningViews: View {
    /// 4 - Aligning Views - 设置视图的对其方式
    var body: some View {
        HStack {
            Text("Hello world!")
                .background(Color.red)
            
            Text("Hello world2")
                .background(Color.green)
        }
        .frame(width: 400, height: 400)
        .background(Color.gray)
        .alignmentGuide(HorizontalAlignment.leading) { (v) -> CGFloat in
            print(v)
            return 100
        }
    }
}

struct AligningViews_Previews: PreviewProvider {
    static var previews: some View {
        AligningViews()
    }
}
