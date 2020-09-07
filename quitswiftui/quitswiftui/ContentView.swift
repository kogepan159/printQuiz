// 90日目　UserDefaults
// 89日目の正解は「次へ」でした
// 参考URL: https://qiita.com/From_F/items/ee016b603b72f68a7f5e

//問題: Your nameに「こげぱん」といれるとどうなるのか？

import SwiftUI

struct ContentView: View {
    @State var inputText:String = ""
    @State var displayText:String = ""

    var body: some View {
        VStack {
            Text("Hello, \(self.displayText)!")
            TextField("Your name", text: $inputText , onCommit: {
                UserDefaults.standard.set(self.inputText, forKey: "name")
                self.displayText = self.inputText
                self.inputText = ""
                })
                .padding()
        }
        .onAppear {
            self.displayText = "World"
            guard let userdefaultText = UserDefaults.standard.value(forKey: "name") as? String else { return }
            self.displayText = userdefaultText
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




