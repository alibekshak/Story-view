//
//  Home.swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 12){
                        
                        Button{
                            
                        } label: {
                            Image("logo1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(
                                    
                                    Image(systemName: "plus")
                                        .padding(7)
                                        .background(.blue, in: Circle())
                                        .foregroundColor(.white)
                                )
                        }
                    }
                    .padding()
                    .padding(.top, 10)
                }
            }
            .navigationTitle("FlowerApp")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
