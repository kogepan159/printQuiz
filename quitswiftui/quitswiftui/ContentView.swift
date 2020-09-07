// 91日目　DatePicker
// 90日目の正解は「Hello, こげぱん」でした
// 参考URL: https://capibara1969.com/2195/

//問題: 2020年10月08日といれるとどうなるのか？(年月日までご回答ください)

import SwiftUI

struct ContentView: View {
   @State private var selectionDate = Date()

    var body: some View {
        VStack {
            DatePicker("日付", selection: $selectionDate)
            HStack {
                Text("出国日時: ")
                Text(selectionDate.description)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




