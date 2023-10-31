//
//  FontExtension.swift
//  Stories
//
//  Created by Apple on 31.10.2023.
//

import SwiftUI

public enum Fonts: String {
    
    case helveticaTitle = "Helvetica"
    case helveticaTitleBold = "Helvetica-Bold"
    case avenirNextRegular = "AvenirNext-Regular"
    case manropeRegular = "Manrope-Regular"
    case interRegular = "Inter-Regular"
    case interBold = "Inter-Bold"
    case interLight = "Inter-Light"
    case interMedium = "Inter-Medium"
    case montserratBold = "Montserrat-Bold"
    case sFProDisplay = "SF Pro Display"
    case montserratSemiBold = "Montserrat-SemiBold"
    case robotoMedium = "Roboto-Medium"
    
}

extension Font {
    
    static func custom(_ name: Fonts, size: CGFloat) -> Font {
        return Font.custom(name.rawValue, size: size)
    }
    
    static var categoryOfItemsTitleFont: Font {
        return .custom(.interBold, size: 16)
    }
    
    static var storeItemTitleFont: Font {
        return .custom(.interBold, size: 14)
    }
    
    static var measureUnitTitle: Font {
        return .custom(.interMedium, size: 12)
    }
    
    static var textForButtonFont: Font {
        return .custom(.interBold, size: 16)
    }
    
}
