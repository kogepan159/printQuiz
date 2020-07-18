// 11日目 switch編
// 10日目の正解は「sunny」でした
import UIKit

let baseball = ""
switch baseball {
case "打つ":
    print("ヒット！")
case "投げる":
    print("いいストレート！")
case "掴む","キャッチ":
    print("いいミット音")
default:
    print("何もしない")
}
