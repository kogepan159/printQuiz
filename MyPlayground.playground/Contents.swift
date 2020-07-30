// 24日目 private/public
// 23日目の正解は「こげぱん」でした
import UIKit

class Dog : NSObject {
    public var uniqueName: String = ""
    private var ownerName: String = ""
    private var dogName: String = ""
    
    func uniqueName(ownerName: String,dogName: String) {
        self.ownerName = ownerName
        self.dogName = dogName
        self.uniqueName = ownerName + " " + dogName
    }
    
    func getOwnerName() -> String? {
        return self.ownerName
    }
    
    func getDogName() -> String? {
        return self.dogName
    }
    
}
let dog:Dog = Dog()
dog.uniqueName(ownerName: "こげぱん", dogName: "アイス")

//print(dog.getOwnerName()) ← 関数からならと呼び出せる_こげぱんが帰ってくる
//print(dog.ownerName)　← privateなので呼びだせない

print(dog.uniqueName) // ← publicなので呼びさせれる_今日の問題





