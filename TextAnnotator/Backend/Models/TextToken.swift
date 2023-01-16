//
//  TextToken.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/9/23.
//

import Foundation
//
//  Created by Kyana Burhite on 1/9/23.
//

import Foundation
#if MAC_TEXT
import SwiftUI
#endif

struct TokenSplitTextRange {
    var begin : Int
    var end : Int
    var id : String
    
}
class TextToken : Identifiable{
    var id : UUID
    var text : String
    
    init( text : String) {
        self.id = UUID()
        self.text = text
        
        
    }
    
}
extension TextToken {
    #if MAC_TEXT
    func saveTexts(range: TokenSplitTextRange, tokens: Binding<[TextToken]>) {
        var index = tokens.firstIndex { $0.id == self.id
        }
        
        
//
        let startIndex = self.text.startIndex
        let endIndex = self.text.endIndex
        let rangeStartIndex = self.text.index(self.text.startIndex, offsetBy: range.begin)
        
        let rangeEndIndex = self.text.index(self.text.endIndex, offsetBy: range.end)
        
        let before = self.text[startIndex..<self.text.index(before: rangeStartIndex)]
        let during = self.text[rangeStartIndex..<rangeEndIndex]
        let after = self.text[self.text.index(after: rangeEndIndex)..<endIndex]
        
        
        tokens.wrappedValue.insert(TextToken(text: String(before)), at: index! - 1)
        tokens.wrappedValue.insert(TextToken(text: String(after)), at: index! + 1)
//
        self.text = String(during)
    }
    #endif
    
    func setText(text: String) {
        self.text = text
    }
    
    func getObject()  -> [String: String]{
        return ["text": self.text, "id": self.id.uuidString]
    }
    func makeHTML() -> String {
        let html = ""
        
        return html
    }
}
