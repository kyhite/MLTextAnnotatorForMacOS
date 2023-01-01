//
//  main.swift
//  TextAnnotator_backend_test
//
//  Created by Kyana Burhite on 12/30/22.
//

import Foundation
import SwiftUI


var classes = AnnotationFileLoader.ReadTextFile(p: "/Users/kyanaburhite/Downloads/18.txt")
let transaction = "DEBIT     03/05/2022    Doug's Dugout Dogs         $33.27"
//https://developer.apple.com/forums/thread/707696
let fragments = transaction.split(separator: /\s{2,}|\t/)
print(fragments)
let exp = "this is my fight song 1 singing all right wrong 2 "
//let exp = "123.456.789"
let expby = /(\.)/
//let regExp = try! NSRegularExpression(pattern: "1")
//let regExp = RegexComponent()

//exp.replacingOccurrences(of: "1", with: "REGEX1")
//print(exp.replacing(/1/, with: "REGEX1"))
print(NSRegularExpression.splitWithDelims(pattern: "(\\d)|(\\s)", fromString: exp))

