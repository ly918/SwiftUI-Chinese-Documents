//
//  ContentView.swift
//  MacAppDemo
//
//  Created by GNR on 2019/12/30.
//  Copyright © 2019 LvYuan. All rights reserved.
//

import SwiftUI

struct DetailView1: View {
    let text: String

    var body: some View {
        
        VStack {
            Text(text)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button(action: {
                
                let detail = NSOpenPanel()
                detail.runModal()
                
              
            }) {
                Text("Open Window")
            }
        }
        
        
    }
}

struct ContentView: View {
    private let names = ["Homer", "Marge", "Bart", "Lisa"]
    @State private var selection: String?

    var body: some View {
        NavigationView {
            List(selection: $selection) {
                
                Section(header: Text("The Simpsons")) {
                    ForEach(names, id: \.self) { name in
                        NavigationLink(destination: DetailView1(text: name)) {
                            Text(name)
                        }
                    }
                }
            }.listStyle(SidebarListStyle())
                
            
            DetailView1(text: "Make a selection")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
