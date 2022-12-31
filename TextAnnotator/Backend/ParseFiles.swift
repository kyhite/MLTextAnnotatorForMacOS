//
//  ParseFiles.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation

class FileParser {
    public static func parseText(str: String) -> [WordToken]{
        var comps : [String] = str.components(separatedBy: " ")
        var tokens : [WordToken] = []
        
        for c in comps {
            var new_token = WordToken()
            new_token.text = c
            new_token.foreground_color = preferences.TextColorDefault
            new_token.background_color = preferences.BackgroundColorDefault
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
