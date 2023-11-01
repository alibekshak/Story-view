//
//  CategoryView.swift
//  Stories
//
//  Created by Apple on 01.11.2023.
//

import SwiftUI

struct CategoryView: View {
    
    private let layout = Array(repeating: GridItem(spacing: 24), count: 2)
    let categoryName: String
    
    @StateObject var itemViewModel = ItemViewModel()
    
    var body: some View {
        ZStack{
            Color(StringConstant.BackgroundColors.mainColor)
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: layout){
                        ForEach(Array(itemViewModel.items.enumerated()), id: \.element.id){ index, item in
                            RecomendedItemView(item: item, index: index)
                        }
                        
                    }
                }
            }
        }
        .background(Color(StringConstant.BackgroundColors.mainColor))
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(categoryName)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryName: "Цветы")
    }
}
