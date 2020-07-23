// 19日目 break編
// 18日目の正解は「[2, 4]」でした
import UIKit

var count = 0
for _ in 0...4 {
    for _ in 0...5 {
        count = count + 1
        break
    }
}

print(count)



