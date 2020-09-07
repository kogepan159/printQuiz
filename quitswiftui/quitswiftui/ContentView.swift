// 92日目　メインスレッド対応
// 91日目の正解は「2020-10-08」でした
// 参考URL: https://capibara1969.com/2195/

//問題: タイトルをタップすると、何が表示されるでしょうか？

import SwiftUI

struct ContentView: View {
   @State private var textTitle = "タイトル"

    var body: some View {
        Text(textTitle).onTapGesture {
            DispatchQueue.main.async {
                self.textTitle = "メインスレッド"
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




