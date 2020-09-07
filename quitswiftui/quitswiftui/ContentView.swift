// 88日目　bundleVersion取得
// 87日目の正解は「com.junyakengo.quitswiftui.quitswiftui」でした

//問題: buildすると何が表示されますか？

import SwiftUI

struct ContentView: View {
    var body: some View {
            return HStack {
                Text(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




