//
//  RegexWebHolder.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/13/23.
//

import Foundation

class RegexPatternHolder : Identifiable {
    var patterns: [RegexPattern]
    
    init() {
        patterns = []
        
    }
    init(patterns : [RegexPattern]) {
        self.patterns = patterns
    }
    
    func addPattern(pattern: RegexPattern) {
        self.patterns.append(pattern)
    }
    func deletePattern(at idx: Int) {
        patterns.remove(at: idx)
    }
    
    func getPatterns() -> [RegexPattern] {
        return self.patterns
    }
    func getObjects() -> [[String: String]] {
        var objects : [[String: String]] = []
        for pattern in self.patterns {
            objects.append(pattern.getObject())
        }
        return objects
    }
    
}


struct RegexPattern : Identifiable  , Equatable, Hashable {


    
    
    var pattern: String
    var foregroundColor: String
    var backgroundColor: String
    var isUsed: Bool
    var id: UUID
    
    init(pattern: String, foregroundColor: String, backgroundColor: String) {
        self.pattern = pattern
//        if self.foregroundColor != nil {
            self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.isUsed = true
        self.id = UUID()
//        } else {
//            self.foregroundColor = preferences.
//        }
    }
    
    func getObject() -> [String: String] {
        return ["pattern": self.pattern, "style":makeStyle(), "isUsed": self.isUsed.description, "id": self.id.uuidString]
    }
    
    func makeStyle() -> String {
        var st = "style=\"background-color:\(self.backgroundColor);color:\(self.foregroundColor);\""
        
        
        
        return st
        
        
    }
    
    
}

//extension RegexPattern:
//
//
//}
