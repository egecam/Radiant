//
//  Theme.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

enum Theme: String {
    case flatteredflamingo
    case lanterngold
    case vangoghgreen
    case lima
    case candy
    
    var accentColor: Color {
        return .black
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}
