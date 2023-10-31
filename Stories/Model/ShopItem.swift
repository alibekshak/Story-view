//
//  ShopItem.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import Foundation


struct ShopItem: Identifiable, Hashable{
    let id = UUID().uuidString
    let title: String
    let description: String
    let price: Int
    let Image: String
}
