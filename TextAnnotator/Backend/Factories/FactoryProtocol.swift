//
//  FactoryProtocol.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/1/23.
//

import Foundation


protocol Factory {
    associatedtype T
    var classtype : String { get set }
    func new(text: String, foreground_color: String, background_color:String) -> T
    func newPtr(text: String, foreground_color: String, background_color:String) -> UnsafeMutablePointer<T>
}
