// 96日目　ダークモード対応対応
// 95日目の正解は「3つ」でした

//問題: lightモード時に何が表示されるでしょうか？

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack  {
            if (UITraitCollection.current.userInterfaceStyle == .dark) {
                Text("白い恋人").foregroundColor(Color.black)
            } else {
               Text("ごまたまご").foregroundColor(Color.black)
            }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView().colorScheme(.dark)
    }
}




