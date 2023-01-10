//
//  TokenWebView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/7/23.
//

import Foundation

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    @Binding var texts: [[String: String]]
    @Binding var splittingSet : String

    var contentController  = TokenContentController()
    func jsonArguments() -> String{

        let decoder = JSONEncoder()
        var first = ""
        var second = ""
        do {
            first = try! String(data:decoder.encode(texts), encoding: .utf8)!
        }
        do {
            second = try! String(data:decoder.encode(preferences.Annotations), encoding: .utf8)!
        }
        return first + "," + second
    }
    func makeText() -> String {
        do {
            let path = Bundle.main.resourcePath! + "/index.html"
//            print(path)
        
            var text = try String(contentsOfFile:path)
            
            text = text.replacingOccurrences(of: "###", with: "\(jsonArguments())")
            
            return text
        } catch {
            return "<html><body>alexa this is so sad, play despacito</body></html>"
        }
    }
    func makeNSView(context: Context) -> WKWebView {
        contentController.webView = self
        var config = WKWebViewConfiguration()
        config.userContentController.add(contentController, name: "newSelectionDetected")
        let webView = WKWebView(frame: .zero, configuration: config)
        let text = makeText()
        webView.loadHTMLString(text, baseURL: nil)
        
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        print("UPDATE!")
//        print(nsView.configuration.preferences)
//        webView.
//        print(nsView.scrollView)
        let text = makeText()
        nsView.loadHTMLString(text, baseURL: nil)
        
    }
    func fakeCopy() {
        print("this is a copy!")
    }
    
 
    
    
//    typealias NSViewType = WKWebView
    
}
