// 71日目 AutoLayout可変
// 70日目の正解は「false」でした

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
        // ソースコードでautoLayout変更可能
        // (回転処理や端末ごとに別処理したいときに使うことがあります)
        quizButtonTopLayout.constant = 100
        print(quizButtonTopLayout.constant)
        
    }
}

