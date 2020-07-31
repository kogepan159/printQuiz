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
            print(oldValue) // ← 今日の問題がこちらです！
        }
    }
}

let wallet: Wallet = Wallet()
wallet.money = 1000

