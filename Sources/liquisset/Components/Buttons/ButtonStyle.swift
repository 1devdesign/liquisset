//
//  File.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import Foundation
import SwiftUI

public struct ButtonStyle {
    
    public init(
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        backgroundColor: Color? = nil,
        cornerRadius: CGFloat? = nil,
        strokeWidth: CGFloat? = nil,
        strokeColor: Color? = nil
    ) {
        self.width = width ?? 312
        self.height = height ?? 54
        self.cornerRadius = cornerRadius ?? 0
        self.backgroundColor = backgroundColor ?? Color.blue
        self.strokeWidth = strokeWidth ?? 5
        self.strokeColor = strokeColor ?? Color.gray.opacity(0.6)
    }
    
    public var width: CGFloat = 312
    public var height: CGFloat = 54
    public var cornerRadius: CGFloat = 0
    public var backgroundColor: Color = .blue
    public var strokeWidth: CGFloat = 5
    public var strokeColor: Color = Color.gray.opacity(0.6)
    
}
