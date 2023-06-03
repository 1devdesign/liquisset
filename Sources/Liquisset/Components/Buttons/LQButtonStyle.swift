//
//  File.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import Foundation
import SwiftUI

public struct LQButtonStyle {
    
    public var width: CGFloat = 312
    public var height: CGFloat = 54
    public var backgroundColor: Color = .blue
    public var isPill: Bool = false
    public var cornerRadius: CGFloat = 0
    public var borderWidth: CGFloat = 5
    public var borderColor: Color = Color.gray.opacity(0.6)
    
    public init(
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        backgroundColor: Color? = nil,
        isPill: Bool? = nil,
        cornerRadius: CGFloat? = nil,
        strokeWidth: CGFloat? = nil,
        strokeColor: Color? = nil
    ) {
        self.width = width ?? .infinity
        self.height = height ?? 54
        self.isPill = isPill ?? false
        self.cornerRadius = cornerRadius ?? 0
        self.backgroundColor = backgroundColor ?? Color.blue
        self.borderWidth = strokeWidth ?? 5
        self.borderColor = strokeColor ?? Color.gray.opacity(0.6)
    }
    
}
