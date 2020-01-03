//
//  LayeringViews.swift
//  Views
//
//  Created by GNR on 2019/12/18.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct LayeringViews: View {
    ///
    var body: some View {
        
        VStack {
            Image(systemName: "triangle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.orange)
                .overlay(
                    HStack {
                        Text("哈").font(Font.system(size: 40))
                    }
                    .foregroundColor(Color.white),
                    
                    alignment:.bottom
            )
            
            Image(systemName: "triangle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green)
                .background(
                    HStack{
                        Text("哈")
                            .font(Font.system(size: 80))
                            .foregroundColor(Color.black)
                            .background(Color.red)
                    }
            )
            
            ZStack{
                Image(systemName: "triangle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.red)
                    .zIndex(2)
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.green)
                    .zIndex(1)
                
            }
            
        }
        
    }
}

struct LayeringViews_Previews: PreviewProvider {
    static var previews: some View {
        LayeringViews()
    }
}
