//
//  AnnotationSideBarView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/8/23.
//

import SwiftUI

struct AnnotationSideBarItemView: View {
//    print(#sourceLocatopn)
    @Binding var v: RegexPattern
    var body: some View {
        Text("\(v.pattern)")
            .foregroundColor(ColorTranslator.string2Color(str: v.foregroundColor))
            .listRowBackground(ColorTranslator.string2Color(str: v.backgroundColor))
            
            
    }
}

//struct AnnotationSideBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnnotationSideBarView(v: ["hello": "world"])
//    }
//}
