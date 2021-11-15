//
//  FontRegistering.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import Foundation
import CoreText

final class FontRegistering {
    static let shared = FontRegistering()
    var isRegistered = false
    
    func registerFonts() {
        let bundle = Bundle(for: Self.self)
        let fontFiles = [
            "AntDesign",
            "Entypo",
            "EvilIcons",
            "Feather",
            "FontAwesome",
            "FontAwesome_Brands",
            "FontAwesome_Regular",
            "FontAwesome_Solid",
            "Fontisto",
            "Foundation",
            "Ionicons",
            "MaterialCommunityIcons",
            "MaterialIcons",
            "Octicons",
            "SimpleLineIcons",
            "Zocial"
        ]
        let fontDatas = fontFiles
            .compactMap { bundle.url(forResource: $0, withExtension: "ttf") }
            .compactMap { try? Data(contentsOf: $0) }
        for data in fontDatas {
            guard let provider = CGDataProvider(data: data as CFData) else { return }
            guard let font = CGFont(provider) else { return }
            let error: UnsafeMutablePointer<Unmanaged<CFError>?>? = nil
            guard CTFontManagerRegisterGraphicsFont(font, error) else {
                guard
                    let unError = error?.pointee?.takeUnretainedValue(),
                    let description = CFErrorCopyDescription(unError)
                else {
                    print("Unknown error")
                    return
                }
                print("Failed to load font: ", description)
            }
        }
        isRegistered = true
    }
}
