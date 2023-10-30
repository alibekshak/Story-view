//
//  Home.swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

struct Home: View {
    
    @StateObject var storyData = StoryViewModel()
    
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
                        
                        ForEach($storyData.stories){ $bundle in
                            
                            ProfileView(bundle: $bundle)
                                .environmentObject(storyData)
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


struct ProfileView: View{
    
    @Binding var bundle: StoryBundle
    
    @Environment(\.colorScheme) var scheme
    
    @EnvironmentObject var storyData: StoryViewModel
    
    var body: some View{
        Image(bundle.profileImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        // Progress Ring
            .padding(2)
            .background(scheme == .dark ? .black : .white, in: Circle())
            .padding(2)
            .background(
                LinearGradient(colors: [
                    .red,
                    .orange,
                    .red,
                    .orange
                ], startPoint: .top, endPoint: .bottom)
                .clipShape(Circle())
                .opacity(bundle.isSeen ? 0 : 1)
            )
            .onTapGesture {
                withAnimation{
                    bundle.isSeen = true
                }
            }
    }
}
