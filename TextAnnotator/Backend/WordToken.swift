//
//  WordToken.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import Foundation
import SwiftUI

class WordToken: FactoryProduct {
    
    var text: String = "this is a test"
    var classtype : String = "wordtoken"
    var id =  UUID()
    var foreground_color: Color = preferences.TextColorDefault
    var background_color: Color = preferences.TextColorDefault
    var annotations : [String] = [""]
    var compositeFactory = CompositeFactory()
    
    
}

extension WordToken {
    func setText(txt: String) {
        print(self.text)
        self.text = txt
    }
    
    func setForegroundColor(color: Color) {
        self.foreground_color = color
    }
    func setBackgroundColor(color: Color) {
        self.background_color = color
    }
}
