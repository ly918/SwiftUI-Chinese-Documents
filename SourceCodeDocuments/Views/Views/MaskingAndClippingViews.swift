//
//  MaskingAndClippingViews.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct MaskingAndClippingViews: View {
    var body: some View {
        //        Text("哈")
        //            .font(Font.system(size: 80))
        //            .foregroundColor(Color.white)
        //            .background(Color.blue)
        ////            .clipShape(Circle())
        ////            .cornerRadius(20)
        //
        
        Image(systemName: "triangle.fill")
            .resizable()
            .background(Color.blue)
            .foregroundColor(Color.orange)
            .frame(width: 300, height: 300)
            .mask(
                Text("SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!SWIFT UI!")
                    .font(Font.system(size: 40).bold()))
        
    }
}

struct MaskingAndClippingViews_Previews: PreviewProvider {
    static var previews: some View {
        MaskingAndClippingViews()
    }
}
