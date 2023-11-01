//
//  CategoryModel.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import Foundation

struct CategoryModel: Identifiable, Codable, Hashable {
    let id = UUID().uuidString
    let isHidden: Bool
    var name: String
    let color: String
    let extId: String
    
    private enum CodingKeys: String, CodingKey {
        case id, isHidden, name, color, extId
    }
}

