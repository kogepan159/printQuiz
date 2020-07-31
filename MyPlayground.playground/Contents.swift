// 31日目 do-catch
// 30日目の正解は「1人目の温め完了」でした
import UIKit

func notEmpty(text: String) throws {
    if text.isEmpty {
        throw NSError(domain: "空文字です", code: -1, userInfo: ["textEmpty": true])
    }
}

do {
    try notEmpty(text: "空文字です")
    print("OK")
} catch {
    // エラーが発生した場合の処理
    print(error.localizedDescription)
}
