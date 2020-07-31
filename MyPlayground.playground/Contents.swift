// 33日目 super
// 32日目の正解は「300」でした
import UIKit
import Foundation

class TransportationFacilitiesChanger {
    
    var pasumomo: Int = 500
    var suicaca: Int = 400
    
    
    func chargePasumomo(charge: Int) {
        pasumomo = pasumomo + charge
    }
    
    func chargeSuicaca(charge: Int) {
        suicaca = suicaca + charge
    }
}

class Wallet: TransportationFacilitiesChanger {
   
     func autoCharge() {
        super.chargePasumomo(charge: 2000)
        super.chargeSuicaca(charge: 5000)
    }
}

let wallet: Wallet = Wallet()
wallet.autoCharge()
print(wallet.suicaca)

