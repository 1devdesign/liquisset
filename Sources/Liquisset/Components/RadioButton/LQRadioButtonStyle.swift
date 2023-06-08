//
//  File.swift
//  
//
//  Created by Diego Oruna on 7/06/23.
//

import Foundation
import SwiftUI

public struct LQRadioButtonStyle {
    
    public var buttonBackgroundColor: Color
    public var buttonWidth: CGFloat
    public var buttonHeight: CGFloat
    public var textColor: Color
    public var textFont: Font
    
    public init(
        buttonBackgroundColor: Color? = nil,
        buttonWidth: CGFloat? = nil,
        buttonHeight: CGFloat? = nil,
        textColor: Color? = nil,
        textFont: Font? = nil
    ) {
        self.buttonBackgroundColor = buttonBackgroundColor ?? .blue
        self.buttonWidth = buttonWidth ?? 20
        self.buttonHeight = buttonHeight ?? 20
        self.textColor = textColor ?? .black
        self.textFont = textFont ?? .callout
    }
    
}
