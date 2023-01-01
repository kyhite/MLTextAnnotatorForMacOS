//
//  main.swift
//  TextAnnotator_backend_test
//
//  Created by Kyana Burhite on 12/30/22.
//

import Foundation
import SwiftUI


var classes = AnnotationFileLoader.ReadTextFile(p: "/Users/kyanaburhite/Downloads/18.txt")
var colu = [[classes: ["foreground_color": Color.green, "background_color": Color.red]]]
var matched = NSRegularExpression.matches(reg: "\\d" ,text: classes)

var matchedSet = Set(matched)

for m in matchedSet {
    var colu_split : [[String: [String: Color]]]
    for col in colu {
        for (key, val) in col {
            var key_spl = key.components(separatedBy: m)
        }
    }
}
print(matchedSet)
