//
//  ParseFiles.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class FileParser {
    
    static func makeHTML(str: String) {
        var stringCopy = str
        print(stringCopy)
        let stru = "\\W?(\\d+)\\W?"
        for pattern in preferences.Annotations.patterns {
////            var strs = stringCopy.ma
//            let reg = try! NSRegularExpression(pattern: pattern.pattern)
            let ran = NSRange.init(stringCopy)
            let strs = try! Regex.init(pattern.pattern)
            let matches = stringCopy.ranges(of: strs)
            print(matches)
            var matches_strings = Set<String>()
            for match in matches {
                var newString = String.init( stringCopy.substring(with: match))
                newString = try! newString.replacing(Regex("\\W"), with: "")
//                newString = newString.repl
                matches_strings.insert(stringCopy.substring(with: match))
            }
            print(matches_strings)
        }
        
        
    }
//    static func makeNewToken(str:String) -> WordToken {
//        
//        var token = WordToken()
//        
//        
//        return token
//    }
//    
//    public static func makeOriginalToken(str: String) -> [WordToken] {
//        var token = WordToken()
//        token.text = str
//        return [token]
//    }

//    public static func parseText(str: String) -> [WordToken]{
//        //https://stackoverflow.com/questions/26386093/array-from-dictionary-keys-in-swift
////        let annotationString = Array(preferences.Annotations.keys)
//        var components = str.components(separatedBy: " ").filter { $0 != "" && $0 != " " }
//
//        var tokens : [WordToken] = []
//
//        for component in components {
//            var new_token = preferences.makeNewProduct(productType: "wordtoken", text: component)
//
//
////            for (key, val) in preferences.Annotations {
////
////                let matches = NSRegularExpression.matches(reg: key.lowercased(), text: component.lowercased())
////                if matches.count > 0 {
////                    new_token.pointee.foreground_color = val
////
////                }
////
////
////            }
//            tokens.append(new_token)
//        }
//
//        return tokens
//    }
    
}

/**class water
                {hotdog}
                jezebel
 
 
 
 class Jezebel:
    water: HotDog()
 
 class Water:
 
 class HotDog(Water) :
    
 **/
