// 100日目 100回タップして達成が表示されるアプリ
// 99日目の正解は「android-changetext」でした

// 問題: カウントが100回目に何が表示されますか？
// ここまでお付き合いいただきありがとうございます！
// Swift/Storyboard/SwiftUIと多くのことを私も知れました。
// またどこかでお会いしましょう。

import SwiftUI


struct ContentView: View {
    @State var count :Int = 90
    

    var body: some View {
        VStack {
            if count > 99 {
                           Text("100日間ありがとうございました！ ").foregroundColor(.red).font(Font.system(size: 20))
                       }
            Text("")
            HStack {
                Text("カウント: ")
                Text(self.count.description)
            }
            HStack {
                Button(action: {self.count += 1} ) {
                    Text("+")
                }.padding()
                Button(action: {self.count -= 1}) {
                   Text("-")
                }.padding()
            }
            
           
        }
    }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    }
}




