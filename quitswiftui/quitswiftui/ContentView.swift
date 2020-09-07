// 82日目 UIColor(foregroundColor)
// 81日目の正解は「aaaaa」でした
// 参考URL: https://developer.apple.com/tutorials/swiftui/

//問題: Buttonをタップしたときに出てくるものは？？

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {// 縦に並べる
            Text("Hello2222").foregroundColor(.red).padding(.all, 8.0);
            Text("Hello2222").foregroundColor(.red).padding(.all, 8.0)
            Button(action: {print("111")}) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            };
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
