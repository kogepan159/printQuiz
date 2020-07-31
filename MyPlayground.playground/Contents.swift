// 29日目 ジェネリック関数(ジェネリック型)
// 28日目の正解は「Not enough money」でした
import UIKit

// ジェネリック関数(ジェネリック型)だと、型に依存しない作りができる
// func checkSame(a: Int, b: Int) -> Bool { }
// func checkSame(a: String, b: String) -> Bool { }
// としなくても問題ないという書き方らしい。
func checkSame<T:Equatable> (a: T, b: T) -> Bool {
    return a == b
}

checkSame(a: 1, b: 2)
print(checkSame(a: "aaa", b: "aaa"))
