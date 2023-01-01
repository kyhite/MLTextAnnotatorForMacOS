//
//  CompositeFactory.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/1/23.
//

import Foundation



struct CompositeFactory : Factory {
    var classtype = "composite"
    var factories = [WordTokenFactory()]
    public func new(text: String, foreground_color: String, background_color:String = "") -> WordToken {
        
        var new_token = WordToken()
        new_token.text = text
        return new_token
        
    }
    
    public func newPtr(text: String, foreground_color: String, background_color:String = "") -> UnsafeMutablePointer<WordToken> {
        
        var new_token : UnsafeMutablePointer<WordToken> = UnsafeMutablePointer<WordToken>.allocate(capacity: 1)
        new_token.pointee.text = text
        return new_token
        
    }
}
