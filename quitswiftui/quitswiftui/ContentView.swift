// 95日目　hidden対応
// 94日目の正解は「おはよう」でした

//問題: こちらは何個表示されるでしょうか？

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack  {
            Text("text")
            Text("text").hidden()
            Text("text").labelsHidden()
            Text("text")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.locale, .init(identifier: "ja"))
    }
}




