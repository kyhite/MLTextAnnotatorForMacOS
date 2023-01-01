//
//  UserPreferences.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class UserPreferences {
//    var Annotations : [String:Color] = ["\\d":Color.red]
    var TextColorDefault = Color.black
    var BackgroundColorDefault = Color.clear
    var TextSpacing: CGFloat = 100.0
    var regexDelimiter = "*^&#"
    var compositeFactory = CompositeFactory()
    func makeNewProduct(productType:String, text: String) -> UnsafeMutablePointer<WordToken> {
        var factory = WordTokenFactory()
        var newWordToken = factory.newPtr(text: text)
        return newWordToken
        
    }
    
    
    
    var Annotations : [String:Color] = ["genesis": Color.blue,
    "exodus": Color.blue,
    "leviticus": Color.blue,
    "numbers": Color.blue,
    "deuteronomy": Color.blue,
    "joshua": Color.blue,
    "judges": Color.blue,
    "ruth": Color.blue,
    "samuel": Color.blue,
    "kings": Color.blue,
    "chronicles": Color.blue,
    "ezra": Color.blue,
    "nehemiah": Color.blue,
    "tobit": Color.blue,
    "judith": Color.blue,
    "esther": Color.blue,
    "maccabees": Color.blue,
    "job": Color.blue,
    "psalms": Color.blue,
    "proverbs": Color.blue,
    "ecclesiastes": Color.blue,
    "song of songs": Color.blue,
    "wisdom": Color.blue,
    "ecclesiasticus": Color.blue,
     "sirach" : Color.blue,
    "isaiah": Color.blue,
    "jeremiah": Color.blue,
    "lamentations": Color.blue,
    "baruch": Color.blue,
    "ezekiel": Color.blue,
    "daniel": Color.blue,
    "hosea": Color.blue,
    "joel": Color.blue,
    "amos": Color.blue,
    "obadiah": Color.blue,
    "jonah": Color.blue,
    "micah": Color.blue,
    "nahum": Color.blue,
    "habakkuk": Color.blue,
    "zephaniah": Color.blue,
    "haggai": Color.blue,
    "zechariah": Color.blue,
    "malachi": Color.blue,
    "matthew":Color.blue,
    "mark":Color.blue,
    "luke":Color.blue,
    "john":Color.blue,
    "acts of the Apostles":Color.blue,
    "acts":Color.blue,
    "romans":Color.blue,
    
    "corinthians":Color.blue,
    "galatians":Color.blue,
    "ephesians":Color.blue,
    "philippians":Color.blue,
    "colossians":Color.blue,
    "thessalonians":Color.blue,
    
    "timothy":Color.blue,
    "titus":Color.blue,
    "philemon":Color.blue,
    "hebrews":Color.blue,
    "james":Color.blue,
    "peter":Color.blue,
    "revelation":Color.blue,
                                        "\\d+": Color.red
    
    ]
    
}

var preferences = UserPreferences()
/*
 
 */
