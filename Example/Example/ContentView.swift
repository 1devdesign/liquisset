//
//  ContentView.swift
//  Example
//
//  Created by Diego Oruna on 3/06/23.
//

import SwiftUI
import Liquisset

struct ContentView: View {
    var body: some View {
        VStack {
            LQButton {
                print("Liquisset sample app working")
            } content: {
                Text("Awesome work")
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
