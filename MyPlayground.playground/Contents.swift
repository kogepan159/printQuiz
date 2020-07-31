// 25日目 protocol編
// 24日目の正解は「こげぱん　アイス」でした
import UIKit

// functionやテストを定義しておくこと
protocol UniqueAnimalName {
    var uniqueName: String { get set }
    var ownerName: String { get set }
    var animalName: String { get set }
    func uniqueName(ownerName: String,dogName: String)
    func getOwnerName() -> String?
    func getAnimalName() -> String?
}

class Cat: UniqueAnimalName {
    var animalName: String = ""
    var uniqueName: String = ""
    var ownerName: String = ""
    
    func uniqueName(ownerName: String, dogName: String) {
    }
    
    func getOwnerName() -> String? {
        return ""
    }
    
    func getAnimalName() -> String? {
        return ""
    }
}

class Dog : UniqueAnimalName {
    var animalName: String = ""
    var uniqueName: String = ""
    var ownerName: String = ""
    
    func uniqueName(ownerName: String,dogName: String) {
        self.ownerName = ownerName
        self.animalName = dogName
        self.uniqueName = ownerName + " " + dogName
    }
    
    func getOwnerName() -> String? {
        return self.ownerName
    }
    
    func getAnimalName() -> String? {
        return self.animalName
    }
}

let dog:Dog = Dog()
dog.uniqueName(ownerName: "こげぱん", dogName: "アイス")
print(Cat().uniqueName)

