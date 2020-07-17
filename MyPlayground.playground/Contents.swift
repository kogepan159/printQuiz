// 10日目 Enum編
// 9日目の正解は「nil」でした
import UIKit

enum Weather: String {
    case sunny = "sunny"
    case cloudy = "cloudy"
    case rainy = "rainy"
}

print(Weather.cloudy.rawValue)//cloudy
print(Weather.sunny.rawValue)//← 今日の問題
