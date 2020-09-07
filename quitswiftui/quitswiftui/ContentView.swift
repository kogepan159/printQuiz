// 81日目 Tap対応
// 80日目の正解は「Label」でした
// 参考URL: https://developer.apple.com/tutorials/swiftui/

//問題: Helloをタップしたときに出てくるものは？？

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello").onTapGesture {
            print("aaaaa")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
