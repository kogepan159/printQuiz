// 35日目 三項演算
// 34日目の正解は「2500」でした
import UIKit
import Foundation


class Wallet {
    var pasumomo: Int = 500
    var suicaca: Int = 400
    
    func autoCharge() {
        pasumomo < 500 ?  chargePasumomo(charge: 2000): print("NotCharge")
        suicaca < 500 ?  chargeSuicaca(charge: 5000) : print("NotCharge")

    }
    
    private func chargePasumomo(charge: Int) {
        pasumomo = pasumomo + charge
    }
    
    private func chargeSuicaca(charge: Int) {
        suicaca = suicaca + charge
    }
}

let wallet: Wallet = Wallet()
wallet.autoCharge()
print(wallet.pasumomo) // ← 今日の問題はこちら

