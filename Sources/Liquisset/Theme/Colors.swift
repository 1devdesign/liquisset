//
//  File.swift
//  
//
//  Created by Diego Oruna on 6/06/23.
//

import SwiftUI

extension Color {
    
    public static var gray50: Color { return Color(hexString: "#F9FAFB")! }
    public static var gray100: Color { return Color(hexString: "#F3F4F6")! }
    public static var gray200: Color { return Color(hexString: "#E5E7EB")! }
    public static var gray300: Color { return Color(hexString: "#D1D5DB")! }
    public static var gray400: Color { return Color(hexString: "#9CA3AF")! }
    public static var gray500: Color { return Color(hexString: "#6B7280")! }
    public static var gray600: Color { return Color(hexString: "#4B5563")! }
    public static var gray700: Color { return Color(hexString: "#374151")! }
    public static var gray800: Color { return Color(hexString: "#1F2937")! }
    public static var gray900: Color { return Color(hexString: "#111827")! }
    
    public static var red50: Color { return Color(hexString: "#FDF2F2")! }
    public static var red100: Color { return Color(hexString: "#FDE8E8")! }
    public static var red200: Color { return Color(hexString: "#FBD5D5")! }
    public static var red300: Color { return Color(hexString: "#F8B4B4")! }
    public static var red400: Color { return Color(hexString: "#F98080")! }
    public static var red500: Color { return Color(hexString: "#F05252")! }
    public static var red600: Color { return Color(hexString: "#E02424")! }
    public static var red700: Color { return Color(hexString: "#C81E1E")! }
    public static var red800: Color { return Color(hexString: "#9B1C1C")! }
    public static var red900: Color { return Color(hexString: "#771D1D")! }
    
    public static var amber50: Color { return Color(hexString: "#FDFDEA")! }
    public static var amber100: Color { return Color(hexString: "#FDF6B2")! }
    public static var amber200: Color { return Color(hexString: "#FCE96A")! }
    public static var amber300: Color { return Color(hexString: "#FACA15")! }
    public static var amber400: Color { return Color(hexString: "#E3A008")! }
    public static var amber500: Color { return Color(hexString: "#C27803")! }
    public static var amber600: Color { return Color(hexString: "#9F580A")! }
    public static var amber700: Color { return Color(hexString: "#8E4B10")! }
    public static var amber800: Color { return Color(hexString: "#723B13")! }
    public static var amber900: Color { return Color(hexString: "#633112")! }
    
    public static var emerald50: Color { return Color(hexString: "#F3FAF7")! }
    public static var emerald100: Color { return Color(hexString: "#DEF7EC")! }
    public static var emerald200: Color { return Color(hexString: "#BCF0DA")! }
    public static var emerald300: Color { return Color(hexString: "#84E1BC")! }
    public static var emerald400: Color { return Color(hexString: "#31C48D")! }
    public static var emerald500: Color { return Color(hexString: "#0E9F6E")! }
    public static var emerald600: Color { return Color(hexString: "#057A55")! }
    public static var emerald700: Color { return Color(hexString: "#046C4E")! }
    public static var emerald800: Color { return Color(hexString: "#03543F")! }
    public static var emerald900: Color { return Color(hexString: "#014737")! }
    
    public static var blue50: Color { return Color(hexString: "#EBF5FF")! }
    public static var blue100: Color { return Color(hexString: "#E1EFFE")! }
    public static var blue200: Color { return Color(hexString: "#C3DDFD")! }
    public static var blue300: Color { return Color(hexString: "#A4CAFE")! }
    public static var blue400: Color { return Color(hexString: "#76A9FA")! }
    public static var blue500: Color { return Color(hexString: "#3F83F8")! }
    public static var blue600: Color { return Color(hexString: "#1C64F2")! }
    public static var blue700: Color { return Color(hexString: "#1A56DB")! }
    public static var blue800: Color { return Color(hexString: "#1E429F")! }
    public static var blue900: Color { return Color(hexString: "#233876")! }
    
    public static var indigo50: Color { return Color(hexString: "#F0F5FF")! }
    public static var indigo100: Color { return Color(hexString: "#E5EDFF")! }
    public static var indigo200: Color { return Color(hexString: "#CDDBFE")! }
    public static var indigo300: Color { return Color(hexString: "#B4C6FC")! }
    public static var indigo400: Color { return Color(hexString: "#8DA2FB")! }
    public static var indigo500: Color { return Color(hexString: "#6875F5")! }
    public static var indigo600: Color { return Color(hexString: "#5850EC")! }
    public static var indigo700: Color { return Color(hexString: "#5145CD")! }
    public static var indigo800: Color { return Color(hexString: "#42389D")! }
    public static var indigo900: Color { return Color(hexString: "#362F78")! }

    public static var violet50: Color { return Color(hexString: "#F6F5FF")! }
    public static var violet100: Color { return Color(hexString: "#EDEBFE")! }
    public static var violet200: Color { return Color(hexString: "#DCD7FE")! }
    public static var violet300: Color { return Color(hexString: "#CABFFD")! }
    public static var violet400: Color { return Color(hexString: "#AC94FA")! }
    public static var violet500: Color { return Color(hexString: "#9061F9")! }
    public static var violet600: Color { return Color(hexString: "#7E3AF2")! }
    public static var violet700: Color { return Color(hexString: "#6C2BD9")! }
    public static var violet800: Color { return Color(hexString: "#5521B5")! }
    public static var violet900: Color { return Color(hexString: "#4A1D96")! }
    
    public static var pink50: Color { return Color(hexString: "#FDF2F8")! }
    public static var pink100: Color { return Color(hexString: "#FCE8F3")! }
    public static var pink200: Color { return Color(hexString: "#FAD1E8")! }
    public static var pink300: Color { return Color(hexString: "#F8B4D9")! }
    public static var pink400: Color { return Color(hexString: "#F17EB8")! }
    public static var pink500: Color { return Color(hexString: "#E74694")! }
    public static var pink600: Color { return Color(hexString: "#D61F69")! }
    public static var pink700: Color { return Color(hexString: "#BF125D")! }
    public static var pink800: Color { return Color(hexString: "#99154B")! }
    public static var pink900: Color { return Color(hexString: "#751A3D")! }
    
    
    public static var primary: Color { return Color.blue }
    public static var success: Color { return Color.emerald400 }
    public static var info: Color { return Color.blue500 }
    public static var warning: Color { return Color.amber300 }
    public static var danger: Color { return Color.red600 }
    public static var basic: Color { return Color.gray300 }
    
}
