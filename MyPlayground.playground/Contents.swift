// 27日目 Closure編
// 26日目の正解は「アイス」でした
import UIKit
import Foundation

class Menu {
    var isBuy:((Bool) -> Void)!
    
    let brink = { (money: Int) -> Bool in
        return 150 <= money
    }
    
    let lunch = { (money: Int) -> Bool in
        return 1000 <= money
    }
}

class Wallet {
    let walletMoney : Int = 300

    
    
}

let menu: Menu = Menu()
menu.brink(300)
menu.lunch(300)

menu.isBuy = { (isBuy) in
    print(isBuy)
}
menu.isBuy(true)





















