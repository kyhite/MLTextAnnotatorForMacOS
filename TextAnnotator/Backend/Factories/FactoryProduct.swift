//
//  FactoryProduct.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/1/23.
//

import Foundation


protocol FactoryProduct: Identifiable {
    
    var classtype : String { get set }
//    var id : UUID { get set }
}
