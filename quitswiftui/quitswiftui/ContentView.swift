// 89日目　UIImage_iOS13用+ImageTap
// 88日目の正解は「1.0」でした

//問題: Imageをタップすると何が表示されますか？

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "pencil").resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .padding()
            .border(Color.red, width: 2)
            .onTapGesture {
                print("次へ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




