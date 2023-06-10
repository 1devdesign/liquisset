//
//  File.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import Foundation
import SwiftUI

public struct LQButtonStyle {
    
    public var width: CGFloat
    public var height: CGFloat
    public var backgroundColor: Color
    public var isPill: Bool = false
    public var cornerRadius: CGFloat
    public var borderWidth: CGFloat
    public var borderColor: Color
    
    public init(
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        backgroundColor: Color? = nil,
        isPill: Bool? = nil,
        cornerRadius: CGFloat? = nil,
        borderWidth: CGFloat? = nil,
        borderColor: Color? = nil
    ) {
        self.width = width ?? .infinity
        self.height = height ?? 54
        self.isPill = isPill ?? false
        self.cornerRadius = cornerRadius ?? 0
        self.backgroundColor = backgroundColor ?? Color.blue
        self.borderWidth = borderWidth ?? 1
        self.borderColor = borderColor ?? .clear
    }
    
}

enum ButtonStatus {
    case primary
    case info
    case warning
    case danger
    case basic
    
}

func buttonStatusToColor(buttonStatus:ButtonStatus) -> Color {
    switch buttonStatus{
        
    case .primary:
       return Color.primary
    case .info:
        return Color.info
    case .warning:
        return Color.warning
    case .danger:
        return Color.danger
    case .basic:
        return Color.basic
    }
    
}
