//
//  ContentSplitBar.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/8/23.
//

import SwiftUI

struct ContentSplitBar: View {
    @State private var annotations = preferences.Annotations.patterns
    var body: some View {
        List($annotations, id:\.self) { annot in
            AnnotationSideBarItemView(v: annot).listRowSeparator(.visible)
        }.navigationTitle("annotations").onChange(of: annotations) { newValue in
            preferences.Annotations.patterns = annotations
        }
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
