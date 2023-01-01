//
//  GetContentPage.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import SwiftUI
import WrappingHStack
//import WrappingHStack


struct GetContentPage: View {
    var fromPath: String
    @State var tokens: [UnsafeMutablePointer<WordToken>] = []
//    let columns = [
//        GridItem(.adaptive(minimum: 100))
//        ]
    var body: some View {
        ScrollView{
//            LazyHGrid(rows: columns, spacing:0){
            WrappingHStack(tokens, spacing:.constant(5)) {
                token in Word_Token_View(token: token)
                                
//                ForEach(tokens) { token in
//                    Word_Token_View(token: token)
                }
        }.lineLimit(nil)
//            .frame(height: 300)
        .onAppear {
                self.tokens = FileParser.parseText(str: fromPath)
                print(self.tokens.count)
            }
            
            
//        }
    }
    
}

struct GetContentPage_Previews: PreviewProvider {
    static var previews: some View {
        GetContentPage(fromPath: "this is a test lol")
    }
}
