// 41日目 カウントアップ処理
// 40日目の正解は「100 0」でした
import UIKit

class CountManagement {
    private var count: Int = 0
    
    func countUp() {
        count += 1
    }
    
    func nowCount() -> Int {
        return count
    }
}

let count: CountManagement = CountManagement()

count.countUp()
count.countUp()
count.countUp()
print(count.nowCount())
