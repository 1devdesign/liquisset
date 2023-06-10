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

public struct SimpleLQButtonModifier : ViewModifier {
    
    var buttonStatus:ButtonStatus = ButtonStatus.primary
    
    public func body(content:Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .background(buttonStatusToColor(buttonStatus: buttonStatus))
            .cornerRadius(8)
    }
}

public struct SimpleButtonOutlineBorderModofier : ViewModifier {
    
    var buttonStatus:ButtonStatus = ButtonStatus.primary
    
    public func body(content:Content) -> some View {
        content
            .foregroundColor(buttonStatusToColor(buttonStatus: buttonStatus))
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(buttonStatusToColor(buttonStatus: buttonStatus))
            )
            .background(buttonStatusToColor(buttonStatus: buttonStatus).opacity(0.1))
    }
}

public struct SimpleButtonGhostModifier : ViewModifier {
    
    var buttonStatus:ButtonStatus = ButtonStatus.primary
    
    public func body(content:Content) -> some View {
        content
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
    // Filled Button
    public func simpleLQButton(buttonStatus:ButtonStatus = ButtonStatus.primary) -> some View {
        modifier(SimpleLQButtonModifier(buttonStatus: buttonStatus))
    }
    // Outline Button
    public func simpleButtonOutlineBorder(buttonStatus:ButtonStatus = ButtonStatus.primary) -> some View {
        modifier(SimpleButtonOutlineBorderModofier(buttonStatus: buttonStatus))
    }
    
    // Text Buttom
    public func simpleButtonGhost(buttonStatus:ButtonStatus = ButtonStatus.primary) -> some View {
        modifier(SimpleButtonGhostModifier(buttonStatus: buttonStatus))
    }
}



struct LQButtonModifier_Previews: PreviewProvider {
    static var previews: some View {
        LQButtonModifier()
    }
}
