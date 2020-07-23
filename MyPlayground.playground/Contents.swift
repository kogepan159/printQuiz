// 16日目 guard編
// 15日目の正解は「test:  111」でした
import UIKit

let text: String? = "aaa"
let text2: String? = nil

class GuardTest {
    static func nilCheck() {
        guard let guardText: String = text else  {
            print("guardText nil")
            return
        }
        guard let guardText2: String = text2 else {
            print("guardText2 nil")
            return
        }
        print("OK nil チェック")
    }
}

GuardTest.nilCheck()



