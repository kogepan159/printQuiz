// 26日目 struct編
// 25日目の正解は「 」でした
import UIKit

// classではない、ひとまとまりにしたい時に使う
struct UniqueAnimalName {
    var uniqueName: String = ""
    var ownerName: String = ""
    var animalName: String = ""
    
    
    mutating func setUniqueName(ownerName: String, dogName: String) {
        self.ownerName = ownerName
        self.animalName = dogName
        self.uniqueName = ownerName + " " + dogName
    }
    
    func getOwnerName() -> String {
        return ownerName
    }
    
    func getAnimalName() -> String {
        return animalName
    }
}

var name:UniqueAnimalName = UniqueAnimalName()
name.setUniqueName(ownerName: "こげぱん", dogName: "アイス")
print(name.getAnimalName())

