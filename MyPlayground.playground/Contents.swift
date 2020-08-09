// 43日目 小学校算数問題
// 42日目の正解は「3」でした
import UIKit

/*
 【算数の問題】
 Aさんは80m/分で、1600m歩きました。
 何分で歩いたでしょうか？
 【公式】
 道のり = 速さ*時間
 速さ = 道のり/時間
 時間 = 道のり/速さ
 */

class OfficialManagement {
    var distance: Double = 0
    var speed: Double = 0
    var time: Double = 0
    
    func retrunDistance() -> Double {
       return speed*time
    }
    
    func retrunSpeed() -> Double {
        return distance/time
    }
    
    func retrunTime() -> Double {
        return distance/speed
    }
}

let answer: OfficialManagement = OfficialManagement()
answer.distance = 1600
answer.speed = 80
print(answer.retrunTime())
