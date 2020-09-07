// 93日目　遅延処理
// 92日目の正解は「メインスレッド」でした

//問題: タイトルを押してから、3秒後何が表示されるでしょうか・

import SwiftUI

struct ContentView: View {
   @State private var textTitle = "タイトル"

    var body: some View {
        Text(textTitle).onTapGesture {
            var privateTextTitle = ""
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.textTitle = privateTextTitle
            }
            
            privateTextTitle += "1秒"
            privateTextTitle += "2秒"
            privateTextTitle += "3秒"
            privateTextTitle += "4秒"
            privateTextTitle += "5秒"
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




