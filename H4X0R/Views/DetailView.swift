//
//  DetailView.swift
//  H4X0R
//
//  Created by Chetan Dhowlaghar on 5/8/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


struct WebView: UIViewRepresentable{
    
    
    typealias UIViewType = WKWebView
    let urlString: String?
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeURL = urlString {

        if let url = URL(string: safeURL) {

        let request = URLRequest(url: url)

        uiView.load(request)

        }

        }
    }
    

    func makeUIView(context: Context) -> UIViewType {

    return WKWebView()

    }
}


