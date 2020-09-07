// 79日目 カウントダウンカウントアップ
// 78日目の正解は「2番目」でした

// 問題: プラス3回、マイナス2回を押したときに最後に出力されたのは？
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizButtonTopLayout: NSLayoutConstraint!
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(fruitsArray[count])
        
    }
    
    @IBAction func addAction(_ sender: Any) {
        count += 1
        quizLabel.text = String(count)
        print(count)
    }
    
    @IBAction func minusAction(_ sender: Any) {
        count -= 1
        quizLabel.text = String(count)
    }
}

