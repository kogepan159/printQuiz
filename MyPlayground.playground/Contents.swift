// 21日目 class編
// 20日目の正解は「2」でした
import UIKit

class Dog : NSObject {
    var name: String = ""
    
    func Naku() {
        print("ワン")
    }
    
    func Ote() {
        print("お手")
    }
}
let dog:Dog = Dog()
dog.name = "ポーチ"
dog.Naku()


