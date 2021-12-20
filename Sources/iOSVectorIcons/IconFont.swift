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
    case evilIcons(EvilIcons)
    case feather(Feather)
    case fontAwesome(FontAwesome)
    case fontAwesome5(FontAwesome5)
    case fontisto(Fontisto)
    case foundation(Foundation)
    case ionicons(Ionicons)
    case materialCommunityIcons(MaterialCommunityIcons)
    case materialIcons(MaterialIcons)
    case octicons(Octicons)
    case simpleLineIcons(SimpleLineIcons)
    case zocial(Zocial)
}

extension IconFont {
    var fontName: String {
        switch self {
        case .antDesign:
            return "anticon"
        case .entypo:
            return "Entypo"
        case .evilIcons:
            return "EvilIcons"
        case .feather:
            return "Feather"
        case .fontAwesome:
            return "FontAwesome"
        case .fontAwesome5:
            return "Font Awesome 5 Free"
        case .fontisto:
            return "fontisto"
        case .foundation:
            return "Foundation"
        case .ionicons:
            return "Ionicons"
        case .materialCommunityIcons:
            return "Material Design Icons"
        case .materialIcons:
            return "Material Icons"
        case .octicons:
            return "Octicons"
        case .simpleLineIcons:
            return "simple-line-icons"
        case .zocial:
            return "Zocial"
        }
    }
    
    var text: String {
        switch self {
        case .antDesign(let value):
            return value.rawValue.unicodeString
        case .entypo(let value):
            return value.rawValue.unicodeString
        case .evilIcons(let value):
            return value.rawValue.unicodeString
        case .feather(let value):
            return value.rawValue.unicodeString
        case .fontAwesome(let value):
            return value.rawValue.unicodeString
        case .fontAwesome5(let value):
            return value.rawValue.unicodeString
        case .fontisto(let value):
            return value.rawValue.unicodeString
        case .foundation(let value):
            return value.rawValue.unicodeString
        case .ionicons(let value):
            return value.rawValue.unicodeString
        case .materialCommunityIcons(let value):
            return value.rawValue.unicodeString
        case .materialIcons(let value):
            return value.rawValue.unicodeString
        case .octicons(let value):
            return value.rawValue.unicodeString
        case .simpleLineIcons(let value):
            return value.rawValue.unicodeString
        case .zocial(let value):
            return value.rawValue.unicodeString
        }
    }
}

private extension UInt32 {
    var unicodeString: String {
        let value = self % 1000000
        return String(UnicodeScalar(value)!)
    }
}

