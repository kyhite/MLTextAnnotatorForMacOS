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
//    @Binding var texts: [String]
//    @Binding var texts:
    
    func jsonArguments() -> String{
//        print("Here!")
        let decoder = JSONEncoder()
        var first = ""
        var second = ""
        do {
            
            first = try! String(data:decoder.encode(texts), encoding: .utf8)!
            
            
        }
//        catch {
//            return ":("
//        }
        do {
            second = try! String(data:decoder.encode(preferences.Annotations), encoding: .utf8)!
            print(second)

        }
//        catch {
//            return ":("
//        }
        
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
//            webView.loadHTMLString("<html><body>alexa this is so sad, play despacito</body></html>", baseURL: nil)
        }
    }
    func makeNSView(context: Context) -> WKWebView {
        
        
        var webView = WKWebView()
//        print(Bundle.main.resourceURL?.absoluteString)
//        let url = URL(string: "http://localhost:8080/MLTextAnnotatorJavascript")
        
//        let url = URL(string: Bundle.main.resourceURL!.absoluteString + "Website/index.html")!
        let text = makeText()
        webView.loadHTMLString(text, baseURL: nil)
//        do {
//            let path = Bundle.main.resourcePath! + "/index.html"
////            print(path)
//
//            var text = try String(contentsOfFile:path)
//
//            text = text.replacingOccurrences(of: "###", with: "\(jsonArguments())")
//
//            webView.loadHTMLString(text, baseURL: nil)
//        } catch {
//            webView.loadHTMLString("<html><body>alexa this is so sad, play despacito</body></html>", baseURL: nil)
//        }
//        webView.loadFileURL(url!, allowingReadAccessTo: url!)
//        let request = URLRequest(url: url!)
//        webView.load(request)
//        webView.evaluateJavaScript("readContents(\(texts));")
//
//        webView.callAsyncJavaScript("readContents",arguments: ["texts": texts],  in: nil, in: WKContentWorld.page)
        
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        print("UPDATE!")
        var text = makeText()
        nsView.loadHTMLString(text, baseURL: nil)
        
    }
    
    
    
    
    typealias NSViewType = WKWebView
    
}
