//
//  ParseFiles.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class FileParser {
    
    static func makeNewToken(str:String) -> WordToken {
        
        var token = WordToken()
        
        
        return token
    }
    public static func parseText(str: String) -> [WordToken]{
//        var new_dict : [[String:[String: Color]]] = [[str: ["background_color": preferences.BackgroundColorDefault, "foreground_color": preferences.TextColorDefault]]]
//        var newDictTwo :[[String:[String: Color]]] = []
//        for (key, value) in preferences.Annotations {
//
//            for ne in new_dict {
//                for (key2, value2) in ne {
//                    let ne_new = splitApart(str:key2,reg: key, colors:value2, new_back: value)
//                    for nee in ne_new {
//                        newDictTwo.append(nee)
//
//                    }
//                }
//            }
//            new_dict = newDictTwo
//
//
//        }
            
            
            
        var components = str.components(separatedBy: " ")
        
        var tokens : [WordToken] = []
        for c in components {
            var new_token = WordToken()
            new_token.text = c
            tokens.append(new_token)
        }
        
        return tokens
    }
    
    public static func parseText(fromPath: String) -> [WordToken]{
        let str : String = AnnotationFileLoader.ReadTextFile(p: fromPath)
        let tokens: [WordToken] = parseText(str: str)
        return tokens
    }
    
}
