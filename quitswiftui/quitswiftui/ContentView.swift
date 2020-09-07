// 86日目　 端末判定+switch文
// 85日目の正解は「OS13.0以外 13.6」でした

//問題: phoneの時に、buildすると何が表示されますか？

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        switch UIDevice.current.userInterfaceIdiom  {
        case .phone:
            return HStack {
                Text("吾輩はiPhoneである")
            }
        case .pad:
            return HStack {
                Text("吾輩はiPadである")
            }
        default:
            return HStack {
                Text("iPhone/iPadじゃない")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




