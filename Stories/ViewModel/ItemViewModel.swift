//
//  ItemViewModel.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import SwiftUI

class ItemViewModel: ObservableObject {
    
    @Published var categories: [CategoryModel] = [
        CategoryModel(isHidden: false, name: "Букеты", color: "", extId: ""),
        CategoryModel(isHidden: false, name: "Игрушки", color: "", extId: ""),
        CategoryModel(isHidden: false, name: "Сладости", color: "", extId: ""),
    ]
    
    
    @Published var items: [ShopItem] = [
        ShopItem(title: "Розы", description: "Букеты", price: 7000, Image: "flower1"),
        ShopItem(title: "Сет 51 роза", description: "Букеты", price: 14000, Image: "flower2"),
        ShopItem(title: "Цветы в коробке", description: "Букеты", price: 9000, Image: "flower3"),
        ShopItem(title: "Мишка 1", description: "Игрушки", price: 500, Image: "bear"),
        ShopItem(title: "Мишка 2", description: "Игрушки", price: 1000, Image: "bear"),
        ShopItem(title: "Милка", description: "Сладости", price: 1000, Image: "candy"),
        ShopItem(title: "Коробка сладостей", description: "Сладости", price: 3000, Image: "candy2"),
    ]
}
