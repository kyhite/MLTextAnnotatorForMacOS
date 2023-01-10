//
//  ContentSplitView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/8/23.
//

import SwiftUI

struct ContentSplitView: View {
    @Binding var texts: [[String:String]]
    @State private var splittingSet = ""
    var body: some View {
        NavigationSplitView {
            
            ContentSplitBar()
//            List(preferences.Annotations) { annotation in
//                NavigationLink(value: country) {
//                  CountryCell(country: country)
//                }
//              }
//              .navigationTitle("World")
            } detail: {
                WebView(texts: $texts, splittingSet: $splittingSet).onChange(of: splittingSet) { v in
                    print(v)
                    print("splittingset? , ", splittingSet)
                }
//              if let country = selection {
//                CountryView(country: country)
//              } else {
//                Text("Select a country")
//              }
            }
    }
}

struct ContentSplitView_Previews: PreviewProvider {
    static var previews: some View {
        ContentSplitView(texts: .constant([["hello": "world"]]))
    }
}
