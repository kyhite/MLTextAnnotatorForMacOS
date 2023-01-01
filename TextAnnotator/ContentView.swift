//
//  ContentView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/30/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var editorPath = AnnotationFileLoader.ReadTextFile(p: "/Users/kyanaburhite/Downloads/18.txt")
//    var editorPath = "this is the song that never ends - it just goes on and on my friend . 1 people started singing it not knowing what it was, but 2 they just kept on singing it forever just because 333"
    var body: some View {

        GetContentPage(fromPath: editorPath)
            .toolbar {
                Button {
                    print("hello")
                } label: {
                    Text("Hello world!")
                }

            }

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
