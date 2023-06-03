//
//  Extensions.swift
//  Example
//
//  Created by Diego Oruna on 3/06/23.
//

import UIKit
import SwiftUI

extension Color {
    
    init?(hexString: String, opacity: CGFloat = 1.0) {
        let rgbaData = getRGBAData(hexString: hexString)
        if(rgbaData != nil){
            self.init(
                .sRGB,
                red:     Double(rgbaData!.r),
                green:   Double(rgbaData!.g),
                blue:    Double(rgbaData!.b),
                opacity: Double(opacity)
            )
            return
        }
        return nil
    }
}

extension UIColor {
    
    public convenience init?(hexString: String, opacity: CGFloat = 1.0) {
        let rgbaData = getRGBAData(hexString: hexString)
        if(rgbaData != nil){
            self.init(
                red:   rgbaData!.r,
                green: rgbaData!.g,
                blue:  rgbaData!.b,
                alpha: opacity)
            return
        }
        return nil
    }
}

private func getRGBAData(hexString: String) -> (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat)? {
    
    var rgbaData : (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat)? = nil
    
    if hexString.hasPrefix("#") {
        let start = hexString.index(hexString.startIndex, offsetBy: 1)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            rgbaData = {
                switch hexColor.count {
                case 8:
                    return ( r: CGFloat((hexNumber & 0xff000000) >> 24) / 255,
                             g: CGFloat((hexNumber & 0x00ff0000) >> 16) / 255,
                             b: CGFloat((hexNumber & 0x0000ff00) >> 8)  / 255,
                             a: CGFloat( hexNumber & 0x000000ff)        / 255
                    )
                case 6:
                    return ( r: CGFloat((hexNumber & 0xff0000) >> 16) / 255,
                             g: CGFloat((hexNumber & 0x00ff00) >> 8)  / 255,
                             b: CGFloat((hexNumber & 0x0000ff))       / 255,
                             a: 1.0
                    )
                default:
                    return nil
                }
            }()
        }
    }
    
    return rgbaData
}
