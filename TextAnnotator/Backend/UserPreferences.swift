//
//  UserPreferences.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class UserPreferences {
    var Annotations : [String:Color] = ["\\d":Color.red]
    var TextColorDefault = Color.black
    var BackgroundColorDefault = Color.clear
    var TextSpacing: CGFloat = 100.0
}
var preferences = UserPreferences()
