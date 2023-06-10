//
//  LQButtonsView.swift
//  Example
//
//  Created by Diego Oruna on 4/06/23.
//

import SwiftUI
import Liquisset

struct LQButtonsView: View {
    
    var outlineStyle: LQButtonStyle = .init(backgroundColor: .clear, borderWidth: 1, borderColor: .blue)
    var iconStyle: LQButtonStyle = .init(backgroundColor: Color(hexString: "#f5bc53"), cornerRadius: 12)
    var pillStyle: LQButtonStyle = .init(backgroundColor: Color(hexString: "#7bf553"), isPill: true)
    
    var body: some View {
        VStack(spacing: 16) {
            Button {
                print("Hello")
            } label: {
                Text("Hello world!")
            }
            .simpleLQButton(buttonStatus: .danger)
            Button {
                print("Hello")
            } label: {
                Text("Hello world!")
            }
            .simpleButtonOutlineBorder(buttonStatus: .primary)
            Button {
                print("Hello")
            } label: {
                Text("Hello world!")
            }
            .simpleLQButton(buttonStatus: .warning)
            LQButton {
                Text("Simple Button")
                    .foregroundColor(.white)
                    .bold()
            }
            LQButton(isDisabled: .constant(true)) {
                Text("Disabled button")
                    .foregroundColor(.white)
                    .bold()
            }
            LQButton(style: outlineStyle) {
                Text("Outline Button")
                    .foregroundColor(.blue)
                    .bold()
            }
            LQButton(style: iconStyle) {
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                    Text("Icon Button")
                        .foregroundColor(.white)
                        .bold()
                }
            }
            LQButton(action: {
                print("Executing pill button")
            }, style: pillStyle) {
                Text("Pill Button")
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
        .navigationTitle("Buttons")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarBackButtonHidden(true)
    }
}

struct LQButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LQButtonsView()
        }
    }
}
