//
//  SwiftUIView.swift
//  
//
//  Created by sarim khan on 10/06/2023.
//


import SwiftUI

struct LQButtonModifier: View {
    var body: some View {
        VStack {
            Button {
                print("Hello")
            } label: {
                Text("Hello world")
                    .font(.headline)
            }
            .simpleLQButton(buttonStatus: ButtonStatus.danger)
            
            Button {
                print("Hello")
            } label: {
                Text("Hello world")
                    .font(.largeTitle)
                    
            }
            .simpleButtonOutlineBorder(buttonStatus: ButtonStatus.warning)
            
            Button {
                print("Hello")
            } label: {
                Text("Hello world")
                    .font(.title)
                    
            }
            .simpleButtonGhost(buttonStatus: ButtonStatus.basic)
            
            Button {
                print("Hello")
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Hello world")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                
                    
            }
            .simpleButtonOutlineBorder(buttonStatus: ButtonStatus.info)
        }

    }
}

extension View {
    func simpleLQButton(buttonStatus:ButtonStatus = ButtonStatus.primary) -> some View {
        self
            .foregroundColor(.white)
            .padding()
            .background(buttonStatusToColor(buttonStatus: buttonStatus))
            .cornerRadius(8)
        
    }
}

extension View {
    func simpleButtonOutlineBorder(buttonStatus:ButtonStatus = ButtonStatus.primary) -> some View {
        self
            .foregroundColor(buttonStatusToColor(buttonStatus: buttonStatus))
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(buttonStatusToColor(buttonStatus: buttonStatus))
            )
            .background(buttonStatusToColor(buttonStatus: buttonStatus).opacity(0.1))
            
        
    }
}

extension View {
    func simpleButtonGhost(buttonStatus:ButtonStatus = ButtonStatus.primary) -> some View {
        self
            .foregroundColor(buttonStatusToColor(buttonStatus: buttonStatus))
            .padding()
    }
}

struct LQButtonModifier_Previews: PreviewProvider {
    static var previews: some View {
        LQButtonModifier()
    }
}
