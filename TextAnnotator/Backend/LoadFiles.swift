//
//  LoadFiles.swift
//  TextAnnotator
//
//  Created by Kyana Burhite on 12/30/22.
//

import Foundation

class AnnotationFileLoader {
    
    static func ReadTextFile(p : String) -> String {
        var str: String = ""
        do{
            str =  try String(contentsOfFile: p)
        }catch{
            str =  "Sorry that did not work lol"
        }
        return str
    }
    
    /* lol I stole this from here: https://praveenkommuri.medium.com/how-to-read-parse-local-json-file-in-swift-28f6cec747cf
     */
    static func readJsonFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
}
