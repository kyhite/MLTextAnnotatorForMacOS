//
//  ParseFiles.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

/*
 taken from here : https://www.hackingwithswift.com/articles/108/how-to-use-regular-expressions-in-swift
 */
extension NSRegularExpression {
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
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
}
class FileParser {
    
    static func splitApart(str: String, reg: String, colors: [String:Color],new_back: Color) -> [[String: [String: Color]]]{
        
        return []
        
    }
    public static func parseText(str: String) -> [WordToken]{
        var new_dict : [[String:[String: Color]]] = [[str: ["background_color": preferences.BackgroundColorDefault, "foreground_color": preferences.TextColorDefault]]]
        var newDictTwo :[[String:[String: Color]]] = []
        for (key, value) in preferences.Annotations {
            
            for ne in new_dict {
                for (key2, value2) in ne {
                    let ne_new = splitApart(str:key2,reg: key, colors:value2, new_back: value)
                    for nee in ne_new {
                        newDictTwo.append(nee)
                        
                    }
                }
            }
            new_dict = newDictTwo
            
            
        }
            
            
            
                
        var tokens : [WordToken] = []
        return tokens
    }
    
    public static func parseText(fromPath: String) -> [WordToken]{
        let str : String = AnnotationFileLoader.ReadTextFile(p: fromPath)
        let tokens: [WordToken] = parseText(str: str)
        return tokens
    }
    
}
