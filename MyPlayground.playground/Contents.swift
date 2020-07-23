// 21日目 引数
// 20日目の正解は「ワン」でした
import UIKit

class Dog : NSObject {
    var name: String = ""
    
    func uniqueName(ownerName: String,dogName: String) {
        self.name = ownerName + " " + dogName
    }

}
let dog:Dog = Dog()
dog.uniqueName(ownerName: "こげぱん", dogName: "ココア")
print(dog.name)


//func Naku() {
//    print("ワン")
//}
//
//func Ote() {
//    print("お手")
//}

