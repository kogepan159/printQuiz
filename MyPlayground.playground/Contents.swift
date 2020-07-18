// 14日目 Optional編(?,!について)
// 13日目の正解は「あかさたな」でした
import UIKit

let text: String? = nil
let text2: String! = "String型について"
var setText: String = ""

// setText = text ← String型にnilを入れようとするとErrorになる
setText = text ?? "" //nilだった場合に空文字を入れる

setText = text2 // String型にString型を入れるのでOK
print(setText)

