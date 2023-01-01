//
//  WordToken.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class WordToken: Identifiable {
    var text: String = ""
    var foreground_color: Color = preferences.TextColorDefault
    var background_color: Color = preferences.TextColorDefault
    var annotations : [String] = [""]
    var id =  UUID()
//    var nextToken : UnsafeMutablePointer<WordToken>? = UnsafeMutablePointer<WordToken>(nil)
//    var isSelected : Bool = false
    
}
