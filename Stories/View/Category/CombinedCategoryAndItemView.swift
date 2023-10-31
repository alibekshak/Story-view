//
//  CombinedCategoryAndItemView.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import SwiftUI

struct CombinedCategoryAndItemView: View {
    
    @StateObject var itemViewModel = ItemViewModel()
    
    private let categoryName: String
    
    init(categoryName: String) {
        self.categoryName = categoryName
    }
    
    var body: some View {
        VStack(spacing: 10){
            ButtonCategoryAllView(categoryName: categoryName)
                .padding(.horizontal, 18)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 8){
                    ForEach(Array(itemViewModel.items.enumerated()), id: \.element.id){ index, item in
                        RecomendedItemView(item: item, index: index)
                    }
                }
                
            }
            
            
        }
    }
}

struct CombinedCategoryAndItemView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedCategoryAndItemView(categoryName: "Цветы")
    }
}
