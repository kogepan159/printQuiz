// 23日目 return
// 22日目の正解は「こげぱん ココア」でした
import UIKit

class Dog : NSObject {
    var name: String = ""
    
    func uniqueName(ownerName: String,dogName: String) {
        self.name = ownerName + " " + dogName
    }
    
    func getOwnerName() -> String? {
        return self.name.components(separatedBy: " ").first
    }
    
    func getDogName() -> String? {
        return self.name.components(separatedBy: " ").last
    }
    

}
let dog:Dog = Dog()
dog.uniqueName(ownerName: "こげぱん", dogName: "ココア")
print(dog.getOwnerName())




