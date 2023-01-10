//
//  ContentSplitBar.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/8/23.
//

import SwiftUI

struct ContentSplitBar: View {
    var body: some View {
        List(preferences.Annotations, id: \.self) { annot in
                        AnnotationSideBarView(v: annot)
        }.navigationTitle("annotations")
//        ForEach(preferences.Annotations, id:\.self) {annot in
//            AnnotationSideBarView(v: annot)
//
//        }
    }
}

struct ContentSplitBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentSplitBar()
    }
}
