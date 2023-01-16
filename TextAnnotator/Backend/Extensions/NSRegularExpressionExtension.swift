//
//  NSRegularExpressionExtension.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/15/23.
//

import Foundation


extension NSRegularExpression {
    
    static func matches(pattern: String, from text: String) {
        let reg = try! NSRegularExpression(pattern: pattern)
        let ran = NSRange.init(text)!
        var matches = reg.stringByReplacingMatches(in: pattern, range: ran, withTemplate: "<b>($1)</b>")
        
    }
}
