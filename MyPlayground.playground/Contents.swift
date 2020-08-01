// 40日目 fmax/fminを使う
// 39日目の正解は「32」でした
import UIKit

let array: [Double] = [12, 5, 15, 2, 3, 4, 5, 6, 7, 8, 9, 100]
var max: Int = 0
var min: Int = 0

for addNum in array {
    max = Int(fmax(Double(max), addNum))
    min = Int(fmin(Double(min), addNum))
}

print(max, min)
