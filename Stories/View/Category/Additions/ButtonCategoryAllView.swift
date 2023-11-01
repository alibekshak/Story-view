//
//  ButtonCategoryAllView.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import SwiftUI

struct ButtonCategoryAllView: View {
    
    private let categoryName: String
    
    init(categoryName: String) {
        self.categoryName = categoryName
    }
    
    var body: some View {
        HStack {
            Text(categoryName)
                .font(.categoryOfItemsTitleFont)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
            HStack {
                Text("Все")
                    .font(.categoryOfItemsTitleFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.additionalInfoColor))
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(StringConstant.BackgroundColors.additionalInfoColor))
                
            }
            
        }
    }
}

struct ButtonCategoryAllView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCategoryAllView(categoryName: "Цветы")
    }
}
