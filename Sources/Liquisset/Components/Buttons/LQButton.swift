//
//  SwiftUIView.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import SwiftUI

public struct LQButton<Content: View>: View {
    
    var action: (()->())? = nil
    var style: LQButtonStyle
    var isDisabled: Binding<Bool>
    let content: Content
    
    public init(action: (()->())? = nil, style: LQButtonStyle? = nil, isDisabled: Binding<Bool>? = nil, @ViewBuilder content: () -> Content) {
        self.action = action ?? nil
        self.style = style ?? LQButtonStyle()
        self.isDisabled = isDisabled ?? .constant(false)
        self.content = content()
    }
    
    public var body: some View {
        Button {
            action?()
        } label: {
            ZStack {
                Rectangle()
                    .fill(isDisabled.wrappedValue ? style.backgroundColor.opacity(0.4) : style.backgroundColor)
                    .frame(maxWidth: style.width)
                    .frame(height: style.height)
                    .cornerRadius(style.isPill ? style.height / 2 : style.cornerRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: style.isPill ? style.height / 2 : style.cornerRadius)
                            .stroke(style.borderColor, lineWidth: style.borderWidth)
                    )
                VStack {
                    content
                }
            }
        }
        .disabled(isDisabled.wrappedValue)
        .frame(maxWidth: style.width)
        .frame(height: style.height)
        .disabled(isDisabled.wrappedValue)
    }
}

struct PlainButton_Previews: PreviewProvider {
    
    @State static var disabled = true
    static var style: LQButtonStyle = .init(backgroundColor: Color(hexString: "#f5bc53"), isPill: true)
    
    static var previews: some View {
        VStack {
            LQButton {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            LQButton(action: {
                print("")
            }, style: style) {
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .bold()
                }
            }
            LQButton(action: {
                print("")
            }, isDisabled: .constant(true)) {
                Text("Disabled button")
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}
