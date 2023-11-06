//
//  ContentView.swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            Home()
                .environmentObject(ItemViewModel())
                .tabItem{
                    Label("", systemImage: "heart")
                        
                }
        }
        .accentColor(Color(StringConstant.BackgroundColors.selectedColor))
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
