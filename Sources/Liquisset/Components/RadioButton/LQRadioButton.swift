//
//  SwiftUIView.swift
//  
//
//  Created by Diego Oruna on 7/06/23.
//

import SwiftUI

public struct LQRadioButton: View {
    
    private var style: LQRadioButtonStyle
    @Binding private var isChecked: Bool
    private var text: String
    private let onClick: (() -> Void)?
    
    public init(
        style: LQRadioButtonStyle? = nil,
        isChecked: Binding<Bool>,
        text: String,
        onClick: (() -> Void)? = nil
    ) {
        self.style = style ?? LQRadioButtonStyle()
        self._isChecked = isChecked
        self.text = text
        self.onClick = onClick
    }
    
    public var body: some View {
        Group{
            if isChecked {
                HStack {
                    ZStack{
                        Circle()
                            .strokeBorder(style.buttonBackgroundColor, lineWidth: 2)
                            .background(Circle().foregroundColor(Color.white))
                            .frame(width: style.buttonWidth, height: style.buttonHeight)
                        Circle()
                            .fill(style.buttonBackgroundColor)
                            .frame(width: style.buttonWidth / 2, height: style.buttonHeight / 2)
                    }
                    if !text.isEmpty {
                        Text(text)
                            .font(style.textFont)
                    }
                }
                .onTapGesture {
                    self.isChecked = false
                    onClick?()
                }
            } else {
                HStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: style.buttonWidth, height: style.buttonHeight)
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    if !text.isEmpty {
                        Text(text)
                            .font(style.textFont)
                    }
                }
                .onTapGesture {
                    self.isChecked = true
                    onClick?()
                }
            }
        }
    }
}

struct LQRadioButton_Previews: PreviewProvider {
    static var previews: some View {
        LQRadioButton(isChecked: .constant(true), text: "Press me!") {
            
        }
    }
}
