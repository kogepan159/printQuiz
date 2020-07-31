// 27日目 Closure編
// 26日目の正解は「アイス」でした
import UIKit


class CanBuy {
    let brink = { (money: Int) -> Bool in
        return 150 <= money
    }
    
    let lunch = { (money: Int) -> Bool in
        return 1000 <= money
    }
}
let walletMoney : Int = 300

let canBuy: CanBuy = CanBuy()
canBuy.brink(walletMoney)
print(canBuy.lunch(walletMoney))




















class Wallet {
    let walletMoney : Int = 300
}
