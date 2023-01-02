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
    public static func parseText(str: String) -> [UnsafeMutablePointer<WordToken>]{
        //https://stackoverflow.com/questions/26386093/array-from-dictionary-keys-in-swift
        let annotationString = Array(preferences.Annotations.keys)
        var components = str.components(separatedBy: " ").filter { $0 != "" && $0 != " " }
        
        var tokens : [UnsafeMutablePointer<WordToken>] = []
        
        for component in components {
            var new_token = preferences.makeNewProduct(productType: "wordtoken", text: component)
            
            
            for (key, val) in preferences.Annotations {
                
                let matches = NSRegularExpression.matches(reg: key.lowercased(), text: component.lowercased())
                if matches.count > 0 {
                    new_token.pointee.foreground_color = val
                    
                }
                
                
            }
            tokens.append(new_token)
        }
        
        return tokens
    }
    
}

/**class water
                {hotdog}
                jezebel
 
 
 
 class Jezebel:
    water: HotDog()
 
 class Water:
 
 class HotDog(Water) :
    
 **/
