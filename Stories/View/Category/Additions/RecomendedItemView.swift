//
//  RecomendedItemView.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import SwiftUI

struct RecomendedItemView: View {
    
    var item: ShopItem
    
    var index: Int
    
    var body: some View {
        VStack(alignment: .leading){
            Image(item.Image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 128, height: 129)
                .padding(12)
                .background(index % 2 == 0 ?  Color(StringConstant.BackgroundColors.evenColor) : Color(StringConstant.BackgroundColors.oddColor))
                .cornerRadius(32)
            
            VStack(alignment: .leading){
                Text(item.title)
                    .font(Font.storeItemTitleFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                
                Spacer().frame(height: 2)
                
                Text(item.description)
                    .font(Font.measureUnitTitle)
                    .foregroundColor(Color(StringConstant.BackgroundColors.additionalInfoColor))
                
                HStack(spacing: 0) {
                    Text("\(item.price) ₸")
                        .font(Font.storeItemTitleFont)
                        .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                        .frame(width: 118, alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image("Add")
                            .font(.textForButtonFont)
                            .frame(width: 26, height: 26)
                    }
                }

            }
            .padding(.horizontal, 4)
        }
        .padding(12)
    }
}

struct RecomendedItemView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedCategoryAndItemView(categoryName: "Цветы")
    }
}
