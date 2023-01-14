//
//  TextTokenContainer.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/9/23.
//

import Foundation


class TextTokenContainer {
    var container : [TextToken]
    init(container : [TextToken]?) {
        if container == nil {
            self.container = []
        } else {
            self.container = container!
        }
        
    }
    
    
    func saveTexts(range: TokenSplitTextRange) {
        var index = self.container.firstIndex { $0.id.uuidString == range.id
        }!
        let startIndex = self.container[index].text.startIndex
        let endIndex = self.container[index].text.endIndex
        let rangeStartIndex = self.container[index].text.index(self.container[index].text.startIndex, offsetBy: range.begin)
        let rangeEndIndex = self.container[index].text.index(self.container[index].text.endIndex, offsetBy: range.end)
        let before : Substring = self.container[index].text[startIndex..<self.container[index].text.index(before: rangeStartIndex)]
        let during = self.container[index].text[rangeStartIndex..<rangeEndIndex]
        let after = self.container[index].text[self.container[index].text.index(after: rangeEndIndex)..<endIndex]
        self.container[index].setText(text: String(during))
        self.container.insert(TextToken(text: String(after)), at: index + 1)
        self.container.insert(TextToken(text: String(before)), at: index - 1)
    }
    
    func getObjects() -> [[String: String]] {
        var js : [[String:String]] = []
        for token in self.container {
            js.append(token.getObject())
        }
        return js
    }
    
    func setText(text: String, idx: Int) {
//        var index = self.container.firstIndex { $0.id.uuidString == range.id
//        }!
        self.container[idx].setText(text: text)
    }
    
    
}
