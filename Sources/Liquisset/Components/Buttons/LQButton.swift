//
//  SwiftUIView.swift
//  
//
//  Created by Diego Oruna on 2/06/23.
//

import SwiftUI

public struct LQButton<Content: View>: View {
    
    var style: LQButtonStyle
    let content: Content
    var action: () -> () = {}
    
    public init(action: @escaping () -> Void, style: LQButtonStyle? = nil, @ViewBuilder content: () -> Content) {
        self.style = style ?? LQButtonStyle()
        self.content = content()
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Rectangle()
                    .fill(style.backgroundColor)
                    .frame(width: style.width, height: style.height)
                    .cornerRadius(style.cornerRadius)
                VStack {
                    content
                }
            }
        }
        .frame(width: style.width, height: style.height)
    }
}

struct PlainButton_Previews: PreviewProvider {
    
    static var style: LQButtonStyle = .init(backgroundColor: Color(hexString: "#f5bc53"), cornerRadius: 8)
    
    static var previews: some View {
        Group {
            LQButton {
                print("")
            } content: {
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
        }
    }
}
