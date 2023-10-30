//
//  StoryView.swift
//  Stories
//
//  Created by Apple on 30.10.2023.
//

import SwiftUI

struct StoryView: View {
    
    @EnvironmentObject var storyData: StoryViewModel
    
    var body: some View {
        if storyData.showStory{
            TabView(selection: $storyData.currontStory){
                
                ForEach($storyData.stories){ $bundle in
                    StoryCardView(bundle: $bundle)
                        .environmentObject(storyData)
                }
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            // Close Button
           
            
            .transition(.move(edge: .bottom))
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}


struct StoryCardView: View {
    
    @Binding var bundle: StoryBundle
    
    @EnvironmentObject var storyData: StoryViewModel
    
    var body: some View{
        
        GeometryReader{ proxy in
            
            ZStack{
                
                Image(bundle.stories[0].imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
               
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .overlay(
               
                HStack(spacing: 12){
                    Image(bundle.profileImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                    
                    Text(bundle.profileName)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            storyData.showStory = false
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                }
                .padding()
                ,alignment: .topTrailing
            )
            // Timer Capsule
            .overlay(
                HStack(spacing: 5){
                    ForEach(bundle.stories){ story in
                        
                        Capsule()
                            .fill(.gray.opacity(0.5))
                    }
                }
                .frame(height: 1.4)
                .padding(.horizontal)
                ,alignment: .top
            )
            // Rotation
            .rotation3DEffect(getAngle(proxy: proxy), axis: (x: 0, y: 1, z: 0), anchor: proxy.frame(in: .global).minX > 0 ? .leading : .trailing, perspective: 2.5)
        }
    }
    
    func getAngle(proxy: GeometryProxy) -> Angle{
        
        let progress = proxy.frame(in: .global).minX / proxy.size.width
        
        let rotationAngle: CGFloat = 45
        let degrees = rotationAngle * progress
        
        return Angle(degrees: Double(degrees))
    }
}
