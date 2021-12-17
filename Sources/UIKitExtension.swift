//
//  UIKitExtension.swift
//  VectorIcons
//
//  Created by Quan on 17/12/2021.
//

import UIKit

public extension UILabel {
    func setIcon(_ icon: IconFont, size: CGFloat? = nil, color: UIColor? = nil) {
        FontRegistering.register()
        text = icon.text
        font = UIFont(name: icon.fontName, size: size ?? font.pointSize)
        if let color = color {
            textColor = color
        }
    }
}

public extension UIButton {
    func setIcon(_ icon: IconFont, size: CGFloat? = nil, color: UIColor? = nil, for state: UIControl.State) {
        FontRegistering.register()
        setTitle(icon.text, for: state)
        titleLabel?.font = UIFont(name: icon.fontName, size: size ?? titleLabel?.font.pointSize ?? 16)
        if let color = color {
            setTitleColor(color, for: state)
        }
    }
}
