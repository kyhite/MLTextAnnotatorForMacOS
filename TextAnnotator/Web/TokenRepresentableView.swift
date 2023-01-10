//
//  TokenRepresentableView.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 1/8/23.
//

import Foundation
import SwiftUI
import WebKit
import AppKit
   

//class TokenMessageHandler: NSViewController, WKScriptMessageHandler {
//    var texts: [[String:String]]
//
//    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
//        print("userContentController = \(userContentController)")
//        print("message = \(message)")
//    }
//
//    private func getWKWebViewConfiguration() ->
//         WKWebViewConfiguration {
//        let userController = WKUserContentController()
//        userController.add(self, name: "observer")
//        let configuration = WKWebViewConfiguration()
//        configuration.userContentController = userController
//        return configuration
//    }
//
//}

struct TokenControllerRepresentable : NSViewControllerRepresentable {
    @Binding var texts: [[String: String]]
//
//    init(texts: Binding<[[String: String]]>) {
//        self.texts = $texts
//    }
    func makeNSViewController(context: Context) -> TokenController {
        let tokenController = TokenController()
        
        tokenController.texts = texts
        return tokenController
    }
    
    func updateNSViewController(_ nsViewController: TokenController, context: Context) {
        
    }
    
    typealias NSViewControllerType = TokenController
    
    
    
}

class TokenController: NSViewController {
    var texts: [[String: String]]!
    
//    init(texts: [[String:String]]) {
//        self.texts = texts
//    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
    private var wkWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupWKWebview()
        self.loadPage()
        
    }
    private func setupWKWebview() {
        self.wkWebView = WKWebView(
            frame: .zero,
            configuration: self.getWKWebViewConfiguration()
        )
        self.view.addSubview(self.wkWebView)
    }
    private func loadPage() {
        self.wkWebView.loadHTMLString(makeText(), baseURL: nil)
    }
    
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
            var text = try String(contentsOfFile:path)
            text = text.replacingOccurrences(of: "###", with: "\(jsonArguments())")
            return text
        } catch {
            return "<html><body>alexa this is so sad, play despacito</body></html>"
        }
    }
    
    private func getWKWebViewConfiguration() -> WKWebViewConfiguration {
        let userController = WKUserContentController()
        userController.add(self, name: "newSelectionDetected")
        let configuration = WKWebViewConfiguration()
        configuration.userContentController = userController
        return configuration
    }
    

}

extension TokenController : WKScriptMessageHandler {
    func userContentController(
       _ userContentController: WKUserContentController,
       didReceive message: WKScriptMessage
    ) {
    print(message)
    }
}
