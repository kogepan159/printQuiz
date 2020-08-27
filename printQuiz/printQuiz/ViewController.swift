// 72日目 メインスレッド対応
// 71日目の正解は「100.0」でした
// 今回参考にしたサイト: https://qiita.com/valmet/items/6de0921ca6106414228c

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
        DispatchQueue.main.async {
            // メインスレッドで実行 UIの処理など
            self.quizLabel.text = "メインスレッド"
            print(self.quizButton.titleLabel?.text)
        }
        
    }
}

