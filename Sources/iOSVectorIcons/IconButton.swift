//
//  IconButton.swift
//  VectorIcons
//
//  Created by Quan on 02/12/2021.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct IconButton: View {
    let icon: IconFont
    let size: CGFloat
    let color: Color
    let action: (() -> Void)?

    public init(_ icon: IconFont,
                size: CGFloat = 16,
                color: Color = .black,
                action: (() -> Void)? = nil) {
        self.icon = icon
        self.size = size
        self.color = color
        self.action = action
        
        FontRegistering.register()
    }
    
    public var body: some View {
        Button {
            action?()
        } label: {
            Text(icon.text)
                .font(Font.custom(icon.fontName, size: size))
                .foregroundColor(color)
        }
    }
}

@available(iOS 13.0.0, *)
public extension IconButton {
    func style(
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        backgroundColor: Color = .clear,
        highlightedColor: Color? = nil,
        cornerRadius: CGFloat = 0,
        borderWidth: CGFloat = 0,
        borderColor: Color = .black
    ) -> some View {
        let _highlightedColor = highlightedColor ?? backgroundColor.opacity(0.5)
        return buttonStyle(
            HighlightedButtonStyle(width: width,
                                   height: height,
                                   backgroundColor: backgroundColor,
                                   highlightedColor: _highlightedColor,
                                   cornerRadius: cornerRadius,
                                   borderColor: borderColor,
                                   borderWidth: borderWidth)
        )
    }
}

@available(iOS 13.0.0, *)
private struct HighlightedButtonStyle: ButtonStyle {
    let width: CGFloat!
    let height: CGFloat!
    let backgroundColor: Color
    let highlightedColor: Color
    let cornerRadius: CGFloat
    let borderColor: Color
    let borderWidth: CGFloat

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .if(width == nil) {
                $0.padding(.horizontal, 8)
            }
            .if(height == nil) {
                $0.padding(.vertical, 8)
            }
            .if(width != nil && width == .infinity) {
                $0.frame(maxWidth: .infinity)
            }
            .if(width != nil && width != .infinity) {
                $0.frame(width: width)
            }
            .if(height != nil && height == .infinity) {
                $0.frame(maxHeight: .infinity)
            }
            .if(height != nil && height != .infinity) {
                $0.frame(height: height)
            }
            .background(configuration.isPressed ? highlightedColor : backgroundColor)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
    }
}

@available(iOS 13.0.0, *)
private extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
