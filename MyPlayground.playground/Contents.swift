// 9日目
// 8日目の正解は「8」でした
import UIKit

var pointA: Dictionary = ["id": 0,
                          "name": "kogepan",
                          "kana": "コゲパン"] as [String : Any]
pointA["id"] = 10
pointA["idB"] = 20
pointA.removeValue(forKey: "kana")

print(pointA.count)//3
print(pointA["kana"])//← 今日の問題
