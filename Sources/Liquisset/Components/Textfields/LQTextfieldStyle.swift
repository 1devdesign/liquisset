//
//  File.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import Foundation
import SwiftUI

public struct LQTextfieldStyle {
    
    public var width: CGFloat
    public var height: CGFloat
    public var borderType: BorderStyle
    public var cornerRadius: CGFloat
    public var backgroundColor: Color
    public var borderWidth: CGFloat
    public var borderColor: Color
    public var lineWidth: CGFloat
    public var textColor: Color
    public var textFont: Font
    public var placeholderColor: Color
    public var placeholderFont: Font
    public var leadingImageColor: Color
    public var trailingImageColor: Color
    
    public init(
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        borderType: BorderStyle? = nil,
        cornerRadius: CGFloat? = nil,
        backgroundColor: Color? = nil,
        borderWidth: CGFloat? = nil,
        borderColor: Color? = nil,
        lineWidth: CGFloat? = nil,
        textColor: Color? = nil,
        textFont: Font? = nil,
        placeholderColor: Color? = nil,
        placeholderFont: Font? = nil,
        leadingImageColor: Color? = nil,
        trailingImageColor: Color? = nil
    ) {
        self.width = width ?? .infinity
        self.height = height ?? 54
        self.borderType = borderType ?? .squared
        self.cornerRadius = cornerRadius ?? 4
        self.backgroundColor = backgroundColor ?? .white
        self.borderWidth = borderWidth ?? 0.5
        self.borderColor = borderColor ?? Color.gray.opacity(0.6)
        self.lineWidth = lineWidth ?? .infinity
        self.textColor = textColor ?? .black
        self.textFont = textFont ?? .callout
        self.placeholderColor = placeholderColor ?? .black.opacity(0.4)
        self.placeholderFont = placeholderFont ?? .callout
        self.leadingImageColor = leadingImageColor ?? .black
        self.trailingImageColor = trailingImageColor ?? .black
    }
    
}
