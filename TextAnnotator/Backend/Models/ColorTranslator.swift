//
//  ColorTranslator.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/13/23.
//

import Foundation
import SwiftUI

struct ColorTranslator {
    static func string2Color(str: String) -> Color{
        if str == "red" {
            return Color.red
            
        } else if str == "blue" {
            return Color.blue
        } else if str == "green" {
            return Color.green
        } else if str == "orange" {
            return Color.orange
        } else if str == "yellow" {
            return Color.yellow
        }
        else {
            fatalError("add this color buckaroo : \(str)")
        }
    }
}
