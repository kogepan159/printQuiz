// 32日目 willSet/didSet
// 31日目の正解は「OK」でした
import UIKit

// didSetでoldValueを使うって便利ですね
class Wallet {
    var money : Int = 300 {
        willSet {
            print("willSet")
        }
        didSet {
            print(oldValue)
        }
    }
}

let wallet: Wallet = Wallet()
wallet.money = 1000

