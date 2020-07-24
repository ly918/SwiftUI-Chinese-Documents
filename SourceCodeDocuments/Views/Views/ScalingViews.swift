//
//  ScalingViews.swift
//  Views
//
//  Created by GNR on 2020/1/3.
//  Copyright © 2020 LvYuan. All rights reserved.
//

import SwiftUI

struct ScalingViews: View {
    var body: some View {
        List {
            Spacer(minLength: 80.0)

            Circle()
                .fill(Color.pink)
                .scaledToFill()
                .frame(width:300, height:150)
                .border(Color(white:0.75))
            
            Spacer(minLength: 150.0)
            
            Circle()
            .fill(Color.green)
            .scaledToFit()
            .frame(width:300, height:150)
                .border(Color(white: 0.75))
            
            Spacer(minLength: 150.0)
            
            Circle()
                .fill(Color.pink)
                .scaledToFill()
                .frame(width:300, height:150)
                .border(Color(white:0.75))
            
            Spacer(minLength: 150.0)
            
            Circle()
            .fill(Color.green)
            .scaledToFit()
            .frame(width:300, height:150)
                .border(Color(white: 0.75))
            
            Spacer(minLength: 150.0)

        }
        
     
    }
}

struct ScalingViews_Previews: PreviewProvider {
    static var previews: some View {
        ScalingViews()
    }
}
