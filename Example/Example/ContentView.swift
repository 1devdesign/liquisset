//
//  ContentView.swift
//  Example
//
//  Created by Diego Oruna on 3/06/23.
//

import SwiftUI
import Liquisset

struct ContentView: View {
    
    var iconStyle: LQButtonStyle = .init(backgroundColor: Color(hexString: "#f5bc53"), cornerRadius: 12)
    var pillStyle: LQButtonStyle = .init(backgroundColor: Color(hexString: "#7bf553"), isPill: true)
    
    var body: some View {
        VStack(spacing: 16) {
            LQButton {
                Text("Simple Button")
                    .foregroundColor(.white)
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
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
