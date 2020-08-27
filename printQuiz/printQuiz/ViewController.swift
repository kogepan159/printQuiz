// 70日目 isHedden
// 69日目の正解は「1.0」でした

// 前提条件: このViewControllerを開いた時の処理
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // isEnabledは、機能有効/無効を変更する機能
        // isHiddenは、表示/非表示を変更する機能
        // trueが非表示状態
        quizLabel.isHidden = true
        // falseが表示状態
        quizLabel.isHidden = false
        print(quizButton.isHidden)
        
    }
}

