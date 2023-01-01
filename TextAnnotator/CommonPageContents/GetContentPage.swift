//
//  GetContentPage.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/31/22.
//

import SwiftUI
import WrappingHStack


struct GetContentPage: View {
    @State var fromPath: String
    @State var textField: String = "blank"
    @State var tokens: [WordToken] = []
//    let columns = [
//        GridItem(.adaptive(minimum: 100))
//        ]
    var body: some View {
        ScrollView{
            //            .
            //            Text(fromPath)
            VStack{
                TextEditor(text: $fromPath)
            }
            
        }.onAppear {
            tokens = FileParser.parseText(str: fromPath)
            
            
        }
    }
}

struct GetContentPage_Previews: PreviewProvider {
    static var previews: some View {
        GetContentPage(fromPath: "this is a test lol")
    }
}
