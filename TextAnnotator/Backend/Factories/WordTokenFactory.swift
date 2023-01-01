//
//  WordTokenFactory.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/1/23.
//

import Foundation

struct WordTokenFactory : Factory {
    var classtype = "wordtoken"
    //https://developer.apple.com/forums/thread/100527
    public func new(text: String, foreground_color: String, background_color:String = "") -> WordToken {
        
        var new_token = WordToken()
        new_token.text = text
        return new_token
        
    }
    
    public func newPtr(text: String, foreground_color: String = "" , background_color:String = "") -> UnsafeMutablePointer<WordToken> {
        
        var new_token : UnsafeMutablePointer<WordToken> = UnsafeMutablePointer<WordToken>.allocate(capacity: 1)
        
        new_token.initialize(to: WordToken())
        new_token.pointee.text = text
        return new_token
        
    }
}
