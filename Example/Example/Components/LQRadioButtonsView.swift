//
//  LQRadioButtonsView.swift
//  Example
//
//  Created by Diego Oruna on 7/06/23.
//

import SwiftUI
import Liquisset

struct LQRadioButtonsView: View {
    
    @State var isChecked: Bool = false
    @State var isChecked2: Bool = false
    @State var isChecked3: Bool = false
    
    var radioButtonStyle = LQRadioButtonStyle(buttonBackgroundColor: .red, buttonWidth: 30, buttonHeight: 30, textColor: .gray, textFont: .title2)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            LQRadioButton(isChecked: $isChecked, text: "Press me!")
            LQRadioButton(isChecked: $isChecked2, text: "Press me too!") {
                print("Executing code!")
            }
            LQRadioButton(style: radioButtonStyle, isChecked: $isChecked3, text: "Awesome Radio Button!")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .navigationTitle("Radio Buttons")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarBackButtonHidden(true)
    }
}

struct LQRadioButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        LQRadioButtonsView()
    }
}
