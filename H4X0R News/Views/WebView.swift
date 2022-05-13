//
//  WebView.swift
//  H4X0R News
//
//  Created by Miguel Quezada on 11-05-22.
//
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
   
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }



}
