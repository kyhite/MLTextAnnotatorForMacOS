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
        RegexPattern(pattern:"\\W(genesis)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(exodus)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(leviticus)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(numbers)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(deuteronomy)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(joshua)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(judges)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(ruth)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(samuel)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(kings)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(chronicles)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(ezra)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(nehemiah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(tobit)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(judith)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(esther)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(maccabees)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(job)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(psalms)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(proverbs)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(ecclesiastes)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"song of songs", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(wisdom)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(ecclesiasticus)\\W", foregroundColor: "blue", backgroundColor:"red"),
        
        RegexPattern(pattern:"\\W(sirach)\\W", foregroundColor: "blue", backgroundColor:"red"),
     
    RegexPattern(pattern:"\\W(isaiah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(jeremiah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(lamentations)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(baruch)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(ezekiel)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(daniel)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(hosea)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(joel)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(amos)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(obadiah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(jonah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(micah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(nahum)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(habakkuk)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(zephaniah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(haggai)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(zechariah)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(malachi)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(matthew)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(mark)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(luke)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(john)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"acts of the Apostles", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(acts)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(romans)\\W", foregroundColor: "blue", backgroundColor:"red"),
    
    RegexPattern(pattern:"\\W(corinthians)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(galatians)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(ephesians)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(philippians)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(colossians)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(thessalonians)\\W", foregroundColor: "blue", backgroundColor:"red"),
    
    RegexPattern(pattern:"\\W(timothy)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(titus)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(philemon)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(hebrews)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(james)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(peter)\\W", foregroundColor: "blue", backgroundColor:"red"),
    RegexPattern(pattern:"\\W(revelation)\\W", foregroundColor: "blue", backgroundColor:"red"),
        RegexPattern(pattern:"\\W(\\d+)\\W", foregroundColor:"yellow", backgroundColor: "green")
    ])
    
}

var preferences = UserPreferences()
