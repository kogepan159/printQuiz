// 15日目 if let編
// 14日目の正解は「String型について」でした
import UIKit

let text: String? = "111"
let text2: String? = nil

if let ifletText: String = text {
    print("test: ", ifletText)
} else if let ifletText2: String = text2 {
    print("test2: ", ifletText2)
}

