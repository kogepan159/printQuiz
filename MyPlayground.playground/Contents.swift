// 44日目 入場料問題
// 43日目の正解は「20.0」でした
import UIKit

/*
 【前提条件】
 動物園で、大人500円と子供300円の入場料でした、
 20名以上だと、団体割引で1割引きになります。
 */

class AnimalParkPrice {
    private let adultPrice: Int = 500
    private let childrenPrice: Int = 300
    var adult: Int = 0
    var children: Int = 0
    
    func getTotalPrice() -> Int {
        let totalPrice: Int = adultPrice * adult + childrenPrice * children
        if adult + children > 20 {
            return Int(Double(totalPrice) * 0.9)
        } else {
             return totalPrice
        }
    
    }
    
    
}
let price: AnimalParkPrice = AnimalParkPrice()
price.adult = 2
price.children = 3
print(price.getTotalPrice())
