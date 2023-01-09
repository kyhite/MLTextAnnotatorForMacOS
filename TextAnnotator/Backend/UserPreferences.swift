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

    
    var Annotations : [[String: String ]] {
        var annotations : [[String:String]] = []
        for a in Annotators {
            var style = ""
            if a["foregroundColor"] != nil {
                style += "color:" + a["foregroundColor"]! + ";"
            }
            if a["backgroundColor"] != nil {
                style += "background:" + a["backgroundColor"]! + ";"
            }
            var newA = ["pattern": String(a["pattern"]!)]
            if style != "" {
                newA["style"] = "style=\"\(style)\""
            }
            annotations.append(newA)
        }
        
        return annotations
        
    }
    var Annotators : [[String:String]] = [
        ["pattern":"\\W(genesis)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(exodus)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(leviticus)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(numbers)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(deuteronomy)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(joshua)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(judges)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(ruth)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(samuel)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(kings)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(chronicles)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(ezra)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(nehemiah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(tobit)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(judith)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(esther)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(maccabees)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(job)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(psalms)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(proverbs)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(ecclesiastes)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"song of songs", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(wisdom)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(ecclesiasticus)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
        
        ["pattern":"\\W(sirach)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
     
    ["pattern":"\\W(isaiah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(jeremiah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(lamentations)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(baruch)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(ezekiel)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(daniel)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(hosea)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(joel)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(amos)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(obadiah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(jonah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(micah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(nahum)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(habakkuk)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(zephaniah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(haggai)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(zechariah)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(malachi)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(matthew)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(mark)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(luke)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(john)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"acts of the Apostles", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(acts)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(romans)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    
    ["pattern":"\\W(corinthians)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(galatians)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(ephesians)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(philippians)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(colossians)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(thessalonians)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    
    ["pattern":"\\W(timothy)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(titus)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(philemon)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(hebrews)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(james)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(peter)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
    ["pattern":"\\W(revelation)\\W", "foregroundColor": "blue", "backgroundColor":"red"],
        ["pattern":"\\W(\\d+)\\W", "foregroundColor":"yellow", "backgroundColor": "green"]
    ]
    
}

var preferences = UserPreferences()
