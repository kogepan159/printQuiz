// 80日目 ダークモード
// 79日目の正解は「3」でした

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
        
        // UIColor.white
        // UIColor.black
        // ダークモードとライトモード対応できないので、UIColor.labelを利用する
        quizLabel.textColor = UIColor.label
        print(quizLabel.text)
        
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

