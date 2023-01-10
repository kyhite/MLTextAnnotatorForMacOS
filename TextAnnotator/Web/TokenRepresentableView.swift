
import Foundation

import SwiftUI
import WebKit
class TokenContentController: NSObject, WKScriptMessageHandler {
    var webView: WebView!
    var splittingRange:String = ""
    func webView(webView: WebView) {
        self.webView = webView
        
    }
        func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
            print(#function)
            print(message.body)
//            self.splittingRange = (message.body as! String)
            self.webView.splittingSet = message.body as! String
        }
    }
