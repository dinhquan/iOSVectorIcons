//
//  VectorIcons.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct Icon: View {
    let icon: IconFont
    let size: CGFloat
    let color: Color
    
    public init(_ icon: IconFont, size: CGFloat = 16, color: Color = .black) {
        self.icon = icon
        self.size = size
        self.color = color
        
        FontRegistering.register()
    }
    
    public var body: some View {
        Text(icon.text)
            .font(Font.custom(icon.fontName, size: size))
            .foregroundColor(color)
    }
}
