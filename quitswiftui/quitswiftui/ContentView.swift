// 85日目　OS(OS判定)+if文
// 84日目の正解は「https://www.apple.com」でした

//問題: OS13.6の時に、どのように表示されますか？

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        if UIDevice.current.systemVersion == "13.0" {
            return HStack {
                Text("OS13.0")
                Text(UIDevice.current.systemVersion)
            }
        } else {
            return HStack {
                Text("OS13.0以外")
                Text(UIDevice.current.systemVersion)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




