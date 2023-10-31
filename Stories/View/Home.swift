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
                        
                        ForEach($storyData.stories){ $bundle in
                            
                            ProfileView(bundle: $bundle)
                                .environmentObject(storyData)
                        }
                    }
                    .padding()
                }
                
//                ForEach(itemService.categories, id: \.id) { category in
//                    CombinedCategoryAndItemView(categoryId: category.id, categoryName: category.name)
//                        .environmentObject(itemService)
//                        .environmentObject(cartOrderService)
//                }
                
            }
            .navigationTitle("FlowerApp")
        }
        .overlay(
            StoryView()
                .environmentObject(storyData)
        )
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
        VStack(spacing: 7){
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
                        
                        // Saving current story
                        storyData.currontStory = bundle.id
                        storyData.showStory = true
                    }
                }
            
            Text(bundle.profileName)
                .font(Font.system(size: 12, weight: .medium))
                .foregroundColor(.gray)
        }
    }
}
