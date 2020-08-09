// 46日目 自動販売機(お釣り枚数)
// 45日目の正解は「5」でした
import UIKit


class VendingMachine {
    let coinPriceList: [Int] = [500,100,50,10]
    func changeCoinCount(inputMoney: Int, buyMoney: Int) -> Int {
        var coin: Int = 0
        var balance: Int = inputMoney - buyMoney
        if inputMoney < buyMoney {
            print("買えませんでした。")
            return coin
        }
        balance = balance%1000
        
        for coinPrice in coinPriceList {
            if balance/coinPrice > 0 {
                coin = coin + balance/coinPrice
                balance = balance%coinPrice
            }
        }
        return coin
    
    }
}
let price: VendingMachine = VendingMachine()
print(price.changeCoinCount(inputMoney: 1000, buyMoney: 460))
