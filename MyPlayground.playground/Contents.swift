// 16日目 guard編
// 15日目の正解は「test:  111」でした
import UIKit

let text: String? = "111"
let text2: String? = nil

if let ifletText: String = text {
    print("test: ", ifletText)
} else if let ifletText2: String = text2 {
    print("test2: ", ifletText2)
}

