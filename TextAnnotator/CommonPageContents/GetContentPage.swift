//
//  GetContentPage.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import SwiftUI
import WrappingHStack


struct GetContentPage: View {
    var fromPath: String
    @State var tokens: [WordToken] = []
//    let columns = [
//        GridItem(.adaptive(minimum: 100))
//        ]
    var body: some View {
        ScrollView{

            WrappingHStack(tokens) {token in
                Word_Token_View(token: token)
            }
        .onAppear {
                self.tokens = FileParser.parseText(str: fromPath)
                print(self.tokens.count)
            }
            
            
        }
    }
    
}

struct GetContentPage_Previews: PreviewProvider {
    static var previews: some View {
        GetContentPage(fromPath: "this is a test lol")
    }
}
