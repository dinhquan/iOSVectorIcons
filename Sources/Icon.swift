//
//  VectorIcons.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import SwiftUI

public struct Icon: View {
    let icon: IconFont
    let size: CGFloat
    
    public init(_ icon: IconFont, size: CGFloat = 16) {
        self.icon = icon
        self.size = size
        
        if !FontRegistering.shared.isRegistered {
            FontRegistering.shared.registerFonts()
        }
    }
    
    public var body: some View {
        Text(icon.text)
            .font(Font.custom(icon.fontName, size: size))
    }
}
