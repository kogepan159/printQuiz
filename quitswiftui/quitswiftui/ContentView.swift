// 83日目　List(UITableview)
// 82日目の正解は「111」でした

//問題: 一番上のリストをタップしたら、何がprintされますか？

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 1...5は動かないらしいです
            List(1..<5) { localIndex in
                listView(localIndex:localIndex)
            }
            
            Button(action: {print("111")}) {
                Text("テスト")
            }.padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// リスト中身サンプル
struct listView: View {
    var localIndex: Int = 0
    var body: some View {
        HStack {// 横に並べる
            Text("self.localIndex")
            Text("self.localIndex2")
        }.padding().onTapGesture {
            print(self.localIndex)
        }
    }
}
