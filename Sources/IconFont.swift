//
//  IconFont.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import Foundation

public enum IconFont {
    case antDesign(AntDesign)
    case entypo(Entypo)
}

extension IconFont {
    var fontName: String {
        switch self {
        case .antDesign:
            return "anticon"
        case .entypo:
            return "Entypo"
        }
    }
    
    var text: String {
        switch self {
        case .antDesign(let antDesign):
            return antDesign.rawValue.unicodeString
        case .entypo(let entypo):
            return entypo.rawValue.unicodeString
        }
    }
}

private extension UInt32 {
    var unicodeString: String {
        String(UnicodeScalar(self)!)
    }
}

