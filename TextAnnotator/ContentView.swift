//
//  ContentView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var texts: [[String: String]] = [["text" : "This is one song that never ends... it just goes on and on my friend"] , ["text" : captions]]
    @State var b  = true;
//    @State var texts: [String: [String]] = ["texts": ["This is one song that never ends... it just goes on and on my friend", "Well some people started singing it not knowing what it was, and they just kept on singing it forever just because."]]
//    @State var texts: [String] = ["This is one song that never ends... it just goes on and on my friend", "Well some people started singing it not knowing what it was, and they just kept on singing it forever just because."]
    var body: some View {
        
        VStack {
            Toggle("hahahaha", isOn: $b)
//            WebView(texts: $texts)
            ContentSplitView(texts: $texts)
        }.onChange(of: b) { newValue in
            texts = [["text" : "This is one song that never ends... it just goes on and on my friend"], ["text": makeCaption()]]
        }
    }
    func makeCaption() -> String{
        print("caption!!!")
        if b {
            return captions
        } else {
            return contents2
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
