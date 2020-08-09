// 42日目 カウントダウン追加
// 41日目の正解は「3」でした
import UIKit

class CountManagement {
    private var count: Int = 0
    
    func countUp() {
        count += 1
    }
    
    func countDown() {
        count -= 1
    }
    
    func nowCount() -> Int {
        return count
    }
}

let count: CountManagement = CountManagement()
count.countDown()
count.countUp()
count.countUp()
count.countUp()
count.countDown()
count.countUp()
count.countDown()
print(count.nowCount())
