// 94日目　多言語対応
// 93日目の正解は「1秒2秒3秒4秒5秒」でした

//問題: 日本語端末でbuildした場合に何が表示されますか？

import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("text") // Localizable.stringから参照
        //Text(verbatim: "test")そのまま表示させたい場合
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.locale, .init(identifier: "ja"))
    }
}




