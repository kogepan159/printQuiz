// 87日目　bundleId取得
// 86日目の正解は「吾輩はiPhoneである」でした

//問題: buildすると何が表示されますか？

import SwiftUI

struct ContentView: View {
    var body: some View {
            return HStack {
                Text(Bundle.main.bundleIdentifier ?? "")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




