// 39日目 配列を使ったfor文
// 38日目の正解は「なしは、15個在庫がある」でした
import UIKit

let array: [Int] = [12, 5, 15]
var count:Int = 0

for addNum in array {
    count =  count + addNum
}

print(count)
