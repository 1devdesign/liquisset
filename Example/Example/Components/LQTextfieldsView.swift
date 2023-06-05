//
//  LQTextfieldsView.swift
//  Example
//
//  Created by Diego Oruna on 4/06/23.
//

import SwiftUI
import Liquisset

struct LQTextfieldsView: View {
    
    @State var text1 = ""
    @State var text2 = ""
    @State var text3 = "Awesome Contact"
    @State var password = ""
    @State var textStyle = "Custom Style"
    var customStyle = LQTextfieldStyle(borderType: .bottomLine, backgroundColor: .clear, borderWidth: 2, borderColor: .blue, lineWidth: 2, textColor: .blue, trailingImageColor: .blue)
    
    
    var body: some View {
        VStack(spacing: 16) {
            LQTextfield(text: $text1, placeholderText: "Enter some text")
            LQTextfield(text: $text2, placeholderText: "Enter your number", keyboardType: .numberPad, maxCount: 10)
            LQTextfield(text: $text3, leadingImage: Image(systemName: "pencil"))
            LQTextfield(text: $password, placeholderText: "Enter your password")
                .setSecureText(true)
            LQTextfield(style: customStyle, text: $textStyle, trailingImage: Image(systemName: "heart.fill"))
        }
        .padding()
        .navigationTitle("Textfields")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct LQTextfieldsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LQTextfieldsView()
        }
    }
}
