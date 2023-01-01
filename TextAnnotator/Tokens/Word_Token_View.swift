//
//  Word_Token_View.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import SwiftUI

struct Word_Token_View: View {
    var token: WordToken
    var body: some View {
//        Button {
//            print(token.text)
            
//        } label: {
        Text(token.text).foregroundColor(token.foreground_color).lineLimit(1, reservesSpace: true)

//            .padding(20).foregroundColor(Color.yellow).background(Color.blue).lineLimit(1, reservesSpace: true)
        
                                                                              
                                                                              
//        }

//        Text(token.text).foregroundColor(Color.yellow).background(Color.blue).padding(20)
    }
}

struct Word_Token_View_Previews: PreviewProvider {
//    let tok = WordToken()
//    tok.text = "hello world!"
    static var previews: some View {
        Word_Token_View(token: WordToken())
    }
}
