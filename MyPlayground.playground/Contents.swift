// 18日目 Map/Filter編
// 17日目の正解は「30」でした
import UIKit

let array = [1,2,3,4,5]
let newArray = array.map { $0 * 2 } // [2,4,6,8,10]
print(newArray.filter{$0 < 5})









var count = 0

for _ in 0...4 {
    for _ in 0...5 {
        count = count + 1
    }
}

print(count)



