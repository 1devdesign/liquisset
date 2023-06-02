//
//  SwiftUIView.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import SwiftUI

public enum BorderStyle {
    case squared
    case bottomLine
}

public struct LQTextfield: View {
    
    public var style: LQTextfieldStyle
    public var text: Binding<String>
    public var placeHolderText: String
    public var isSecureText: Bool
    public var isDisabled: Binding<Bool>
    public var isAutocorrectionDisabled: Bool
    
    public init(
        style: LQTextfieldStyle? = nil,
        text: Binding<String>,
        placeholderText: String = "",
        isSecureText: Bool = false,
        isDisabled: Binding<Bool> = .constant(false),
        isAutocorrectionDisabled: Bool = false
    ) {
        self.style = style ?? LQTextfieldStyle()
        self.text = text
        self.placeHolderText = placeholderText
        self.isSecureText = isSecureText
        self.isDisabled = isDisabled
        self.isAutocorrectionDisabled = isAutocorrectionDisabled
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            HStack {
                defaultField()
                    .placeholder(when: text.wrappedValue.isEmpty, placeholder: {
                        Text(placeHolderText)
                            .foregroundColor(.black.opacity(0.4))
                    })
                    .frame(maxWidth: .infinity)
                    .frame(height: style.height)
                    .foregroundColor(isDisabled.wrappedValue ? style.textColor.opacity(0.5) : style.textColor)
                    .disabled(isDisabled.wrappedValue)
                    .disableAutocorrection(isAutocorrectionDisabled)
                    .padding([.leading, .trailing], style.borderType == .squared ? 12 : 1)
                    .background(Color.clear)
            }
            .background(
                RoundedRectangle(cornerRadius: getCornerRadius())
                    .stroke(style.borderColor, lineWidth: getBorderWidth(type: .squared))
                    .background(style.backgroundColor.cornerRadius(getCornerRadius()))
            )
            if style.borderType == .bottomLine {
                Rectangle()
                    .frame(height: getBorderWidth(type: .bottomLine))
                    .foregroundColor(style.borderColor)
            }
        }
    }
    
    private func defaultField() -> AnyView {
        if !isSecureText {
            return AnyView(TextField("", text: text))
        } else{
            return AnyView(SecureField("", text: text))
        }
    }
    
    private func getCornerRadius() -> CGFloat {
        return style.borderType == .squared ? style.cornerRadius : 0.0
    }
    
    private func getBorderWidth(type: BorderStyle) -> CGFloat{
        if type == .squared {
            return style.borderType == .squared ? style.borderWidth : 0.0
        }
        else{
            return style.borderWidth
        }
    }
    
}

struct LQTextfieldView_Previews: PreviewProvider {
    @State static var text = ""
    static var style = LQTextfieldStyle(borderType: .squared, cornerRadius: 0, borderWidth: 2, borderColor: Color.pink.opacity(0.4))
    static var previews: some View {
        VStack(spacing: 24) {
            LQTextfield(text: $text, placeholderText: "Placeholder")
            LQTextfield(style: style, text: $text, placeholderText: "Placeholder 2")
            LQTextfield(text: $text, placeholderText: "Placeholder 3", isSecureText: true)
        }.padding()
    }
}

extension View {
    func placeholder<Content: View>(when shouldShow: Bool, alignment: Alignment = .leading, @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

