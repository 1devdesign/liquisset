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
    
    private var style: LQTextfieldStyle
    private var text: Binding<String>
    private var placeHolderText: String
    private var keyboardType: UIKeyboardType
    @State private var secureText: Bool = false
    private var isSecureText: Bool = false
    private var isDisabled: Binding<Bool>
    private var maxLength: Int
    private var isAutocorrectionDisabled: Bool
    private var secureTextImageShow: Image? = Image(systemName: "eye.fill")
    private var secureTextImageHide: Image? = Image(systemName: "eye.slash.fill")
    private var leadingImage : Image?
    private var onClickLeadingImage: (() -> Void)?
    @State private var trailingImage: Image?
    private var onClickTrailingImage: (() -> Void)?
    
    public init(
        style: LQTextfieldStyle? = nil,
        text: Binding<String>,
        placeholderText: String = "",
        keyboardType: UIKeyboardType = .default,
        isDisabled: Binding<Bool> = .constant(false),
        maxCount: Int = 0,
        isAutocorrectionDisabled: Bool = false,
        leadingImage: Image? = nil,
        onClickLeadingImage: (() -> Void)? = nil,
        trailingImage: Image? = nil,
        onClickTrailingImage: (() -> Void)? = nil
    ) {
        self.style = style ?? LQTextfieldStyle()
        self.text = text
        self.placeHolderText = placeholderText
        self.keyboardType = keyboardType
        self.isDisabled = isDisabled
        self.maxLength = maxCount
        self.isAutocorrectionDisabled = isAutocorrectionDisabled
        self.leadingImage = leadingImage
        self.onClickLeadingImage = onClickLeadingImage
        self._trailingImage = State(initialValue: trailingImage)
        self.onClickTrailingImage = onClickTrailingImage
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                leadingImage?
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(style.leadingImageColor)
                    .frame(width: 22, height: 22)
                    .padding(.leading, 12)
                    .disabled(isDisabled.wrappedValue)
                    .onTapGesture {
                        onClickLeadingImage?()
                    }
                defaultField()
                    .placeholder(when: text.wrappedValue.isEmpty, placeholder: {
                        Text(placeHolderText)
                            .font(style.placeholderFont)
                            .foregroundColor(style.placeholderColor)
                    })
                    .frame(maxWidth: .infinity)
                    .frame(height: style.height)
                    .font(style.textFont)
                    .foregroundColor(isDisabled.wrappedValue ? style.textColor.opacity(0.5) : style.textColor)
                    .keyboardType(keyboardType)
                    .disabled(isDisabled.wrappedValue)
                    .disableAutocorrection(isAutocorrectionDisabled)
                    .onReceive(text.wrappedValue.publisher.collect()) {
                        let string = String($0.prefix(maxLength))
                        if text.wrappedValue != string && (maxLength != 0){
                            text.wrappedValue = string
                        }
                    }
                    .padding([.leading, .trailing], style.borderType == .squared ? 12 : 1)
                    .background(Color.clear)
                trailingImage?
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(style.trailingImageColor)
                    .frame(width: 22, height: 22)
                    .padding(.trailing, 12)
                    .onTapGesture {
                        if !isSecureText {
                            onClickTrailingImage?()
                        } else {
                            secureText.toggle()
                            trailingImage = secureText ? secureTextImageShow : secureTextImageHide
                        }
                    }
                    .disabled(isDisabled.wrappedValue)
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
        if !secureText {
            return AnyView(TextField("", text: text))
        } else {
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
    
    public func setSecureText(_ secure: Bool) -> Self{
        var copy = self
        copy._secureText = State(initialValue: secure)
        if secure {
            copy._trailingImage = State(initialValue: copy.secureTextImageShow)
        }
        copy.isSecureText = secure
        return copy
    }
    
}

struct LQTextfieldView_Previews: PreviewProvider {
    @State static var text = ""
    static var style = LQTextfieldStyle(borderType: .squared, cornerRadius: 12, borderWidth: 2, borderColor: Color.pink.opacity(0.4))
    static var previews: some View {
        VStack(spacing: 24) {
            LQTextfield(text: $text, placeholderText: "Placeholder")
            LQTextfield(style: style, text: $text, placeholderText: "Placeholder 2")
            LQTextfield(text: $text, placeholderText: "Placeholder 3").setSecureText(true)
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

