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
        NavigationView {
            List {
                NavigationLink {
                    LQButtonsView()
                } label: {
                    Text("Buttons")
                }
                NavigationLink {
                    LQRadioButtonsView()
                } label: {
                    Text("Radio Buttons")
                }
                NavigationLink {
                    LQTextfieldsView()
                } label: {
                    Text("Textfields")
                }

            }
            .navigationTitle("Liquisset")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
