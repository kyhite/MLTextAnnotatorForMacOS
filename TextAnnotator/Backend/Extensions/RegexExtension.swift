//
//  RegexExtension.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/1/23.
//

import Foundation
import SwiftUI

/*
 taken from here : https://www.hackingwithswift.com/articles/108/how-to-use-regular-expressions-in-swift
 */
extension NSRegularExpression {
//    func matches(_ string: String) -> Bool {
//        let range = NSRange(location: 0, length: string.utf16.count)
//        return firstMatch(in: string, options: [], range: range) != nil
//    }
    //https://stackoverflow.com/questions/27880650/swift-extract-regex-matches
    static func matches(reg: String,text: String) -> [String] {

        do {
            let regex = try NSRegularExpression(pattern: reg)
            let results = regex.matches(in: text,
                                        range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
    static func matches(pattern: String, fromString: String) -> Bool {
        let reg = try! NSRegularExpression(pattern: pattern)
        let range = NSRange(location: 0, length: fromString.utf16.count)
        return reg.firstMatch(in: fromString, options: [], range: range) != nil
    }
    
    static func matches_ranges(pattern: String, fromString: String) {
        let regex = try! NSRegularExpression(pattern: pattern)
        let results = regex.matches(in: fromString,range: NSRange(fromString.startIndex..., in: fromString))
        
//        print(results.)
    }
    
}
extension NSRegularExpression {
    static func splitWithDelims(pattern: String, fromString: String) -> [String] {
        matches_ranges(pattern: pattern, fromString: fromString)
        var matches = matches(reg: pattern,text: fromString)
        
        var delims : [String] = [fromString]
        for match in matches {
            var delim_new : [String] = []
            for delim in delims {
                var spl = delim.components(separatedBy: match).flatMap {
                    $0 == "" ? [match] : [$0, match]
                }.dropLast()


                debugPrint(spl)
            }
            delims = delim_new
        }
        return delims
    }
    
}
