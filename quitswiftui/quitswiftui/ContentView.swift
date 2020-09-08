// 97日目　画面遷移
// 96日目の正解は「ごまたまご」でした
// 参考URL: https://qiita.com/hcrane/items/eb847ca7fb7a0b9e8073

// 問題: SubContentView画面の左上にあるものはなに？

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SubContentView()) {
                Text("Show Next")
            }
        }
    }
}

// 遷移先
struct SubContentView: View {
    var body: some View {
        Text("SubContentView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    }
}




