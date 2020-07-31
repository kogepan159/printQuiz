// 34日目 extension
// 33日目の正解は「5400」でした
import UIKit
import Foundation


extension Wallet {
    func chargePasumomo(charge: Int) {
        pasumomo = pasumomo + charge
    }
    
    func chargeSuicaca(charge: Int) {
        suicaca = suicaca + charge
    }
}

class Wallet {
    var pasumomo: Int = 500
    var suicaca: Int = 400
    
    func autoCharge() {
        chargePasumomo(charge: 2000)
        chargeSuicaca(charge: 5000)
    }
}

let wallet: Wallet = Wallet()
wallet.autoCharge()
print(wallet.pasumomo)

