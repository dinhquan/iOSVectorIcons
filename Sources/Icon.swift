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
    let color: Color
    
    public init(_ icon: IconFont, size: CGFloat = 16, color: Color = .black) {
        self.icon = icon
        self.size = size
        self.color = color
        
        if !FontRegistering.shared.isRegistered {
            FontRegistering.shared.registerFonts()
        }
    }
    
    public var body: some View {
        Text(icon.text)
            .font(Font.custom(icon.fontName, size: size))
            .foregroundColor(color)
    }
}
