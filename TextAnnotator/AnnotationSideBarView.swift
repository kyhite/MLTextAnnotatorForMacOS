//
//  AnnotationSideBarView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/8/23.
//

import SwiftUI

struct AnnotationSideBarView: View {
    var v: [String: String]
    var body: some View {
        Text("\(v["pattern"]!)")
    }
}

struct AnnotationSideBarView_Previews: PreviewProvider {
    static var previews: some View {
        AnnotationSideBarView(v: ["hello": "world"])
    }
}
