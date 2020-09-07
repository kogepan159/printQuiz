// 84日目　WKWebView(UIWebView)
// 83日目の正解は「1」でした

//問題: 何が出力されるでしょうか？

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(loadUrl: "https://www.apple.com")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WebView: UIViewRepresentable {
    var loadUrl:String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        print(loadUrl)
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}
