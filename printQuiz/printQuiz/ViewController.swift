// 74日目 多言語対応
// 73日目の正解は「10」でした
// 今回参考にしたサイト: https://i-app-tec.com/ios/localization.html

// 前提条件: このViewControllerを開いた時の処理
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizButtonTopLayout: NSLayoutConstraint!
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonName = NSLocalizedString("leftUpButton", comment: "") // key-value対応
        
        let localStr = NSLocalizedString("hello", comment: "") // valueがない場合
        print(localStr)
        
    }
}

