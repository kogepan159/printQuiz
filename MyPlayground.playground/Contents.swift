// 37日目 Date型
// 36日目の正解は「16.78」でした
import UIKit

// 日時を取得できる
let formatter = DateFormatter()
formatter.dateFormat = "yyyy年M月d日 HH:mm:SS"
formatter.string(from: Date())

// 日付取得する(この場合はと今の時間を取得)
let today : Date = Date()
let today2 : Date = Date()
// 年数を取得したい時は、Calendarを使います
let calendar = Calendar.current
let year = calendar.component(.year, from: today)
let year2 = calendar.component(.year, from: today2)

if today == today2 {
    print("等式でOK")
} else if year == year2 {
    print("同じ年である")
} else {
    print("全然別物")
}
