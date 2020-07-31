// 28日目 delegate編
// 27日目の正解は「false」でした
import UIKit


protocol MenuDelegate {
    func canBay(isBuy: Bool)
}

class Menu {
    var delegate:MenuDelegate? = nil
    private let brinkPrice: Int = 150
    private let lunchPrice: Int = 1000
    
    func brink(money: Int) {
        delegate?.canBay(isBuy: money >= brinkPrice)
    }
    
    func lunch(money: Int) {
        delegate?.canBay(isBuy: money >= lunchPrice)
    }
}

class Wallet: MenuDelegate {
    let menu: Menu = Menu()
    var walletMoney : Int = 300
    
    init() {
        menu.delegate = self
    }
    
    func canBrink() {
        menu.brink(money: walletMoney)
    }
    
    func canLunch() {
        menu.lunch(money: walletMoney)
    }
    
    func canBay(isBuy: Bool) {
        if isBuy {
            print("Can buy")
        } else {
            print("Not enough money")
        }
    }
}

let wallet: Wallet = Wallet()
wallet.canLunch()
