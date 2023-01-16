//
//  UserPreferences.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class UserPreferences {
//    var Annotati ons : [RegexChanger]
    var TextColorDefault = Color.black
    var BackgroundColorDefault = Color.clear
    var TextSpacing: CGFloat = 100.0
    var regexDelimiter = "*^&#"

    
//    var Annotations : [[String: String ]] {
//        var annotations : [[String:String]] = []
//        for a in Annotators {
//            var style = ""
//            if a[foregroundColor] != nil {
//                style += "color:" + a[foregroundColor]! + ";"
//            }
//            if a["backgroundColor"] != nil {
//                style += "background:" + a["backgroundColor"]! + ";"
//            }
////            var newA = RegexPattern(pattern: String(a["pattern"]!)]
//            if style != "" {
//                newA["style"] = "style=\"\(style)\""
//            }
//            annotations.append(newA)
//        }
//
//        return annotations
//
//    }
    var Annotations : RegexPatternHolder = RegexPatternHolder(patterns:[
        RegexPattern(pattern:"\\b(genesis)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(exodus)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(leviticus)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(numbers)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(deuteronomy)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(joshua)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(judges)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(ruth)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(samuel)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(kings)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(chronicles)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(ezra)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(nehemiah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(tobit)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(judith)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(esther)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(maccabees)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(job)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(psalms)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(proverbs)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(ecclesiastes)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"song of songs", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(wisdom)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(ecclesiasticus)\\b", foregroundColor: "blue", backgroundColor:"red"),
        
        RegexPattern(pattern:"\\b(sirach)\\b", foregroundColor: "blue", backgroundColor:"red"),
     
    RegexPattern(pattern:"\\b(isaiah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(jeremiah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(lamentations)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(baruch)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(ezekiel)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(daniel)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(hosea)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(joel)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(amos)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(obadiah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(jonah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(micah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(nahum)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(habakkuk)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(zephaniah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(haggai)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(zechariah)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(malachi)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(matthew)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(mark)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(luke)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(john)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"acts of the Apostles", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(acts)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(romans)\\b", foregroundColor: "blue", backgroundColor:"red"),
    
    RegexPattern(pattern:"\\b(corinthians)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(galatians)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(ephesians)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(philippians)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(colossians)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(thessalonians)\\b", foregroundColor: "blue", backgroundColor:"red"),
    
    RegexPattern(pattern:"\\b(timothy)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(titus)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(philemon)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(hebrews)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(james)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(peter)\\b", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\b(revelation)\\b", foregroundColor: "blue", backgroundColor:"red"),
        RegexPattern(pattern:"\\b(\\d+)\\b", foregroundColor:"yellow", backgroundColor: "green")
    ])
    
}

var preferences = UserPreferences()
