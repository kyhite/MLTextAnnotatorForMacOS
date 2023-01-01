//
//  Word_Token_View.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import SwiftUI

struct Word_Token_View: View {
    var token: UnsafeMutablePointer<WordToken>
    var body: some View {
//        Button {
//            print(token.text)
            
//        } label: {
        Text(token.pointee.text).foregroundColor(token.pointee.foreground_color).lineLimit(1, reservesSpace: true).onAppear {
            print(token.pointee.text)
        }
                                                                    
                                                                              
//        }

//        Text(token.text).foregroundColor(Color.yellow).background(Color.blue).padding(20)
    }
}

struct Word_Token_View_Previews: PreviewProvider {
//    let tok = WordToken()
//    tok.text = "hello world!"
    static var previews: some View {
        Word_Token_View(token: UnsafeMutablePointer<WordToken>.allocate(capacity: 1))
    }
}
