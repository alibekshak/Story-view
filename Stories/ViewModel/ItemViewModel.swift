//
//  ItemViewModel.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import Foundation

class ItemViewModel: ObservableObject {
    
    @Published var categories: [CategoryModel] = [
        CategoryModel(isHidden: false, name: "Букеты", color: "", extId: ""),
        CategoryModel(isHidden: false, name: "Игрушки", color: "", extId: ""),
        CategoryModel(isHidden: false, name: "Сладости", color: "", extId: ""),
    ]
    
    
    @Published var items: [ShopItem] = [
        ShopItem(title: "Розы", description: "Цветы", price: 7000, Image: "flower1"),
        ShopItem(title: "Сет 51 роза", description: "Цветы", price: 14000, Image: "flower2"),
        ShopItem(title: "Цветы в коробке", description: "Цветы", price: 9000, Image: "flower3"),
    ]
}
