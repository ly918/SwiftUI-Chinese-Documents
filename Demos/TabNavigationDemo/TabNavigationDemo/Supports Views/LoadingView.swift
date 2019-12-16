//
//  LoadingView.swift
//  TabNavigationDemo
//
//  Created by GNR on 2019/12/16.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct LoadingView: UIViewRepresentable {
    
    var loading = false
    
    typealias UIViewType = UIActivityIndicatorView
    
    func makeUIView(context: UIViewRepresentableContext<LoadingView>) -> UIActivityIndicatorView {
        let loading = UIActivityIndicatorView(style: .large)
        loading.hidesWhenStopped = true
        return loading
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<LoadingView>) {
        if loading {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(loading: true)
    }
}
