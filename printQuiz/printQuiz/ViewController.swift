// 49日目 sender
// 48日目の正解は「1」でした

// 前提条件: このViewControllerを開いた時の処理
import UIKit
class ViewController: UIViewController {
    
    
    @IBOutlet weak var quizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapButton(_ sender: UIButton) {
        
        if sender == quizButton {
            print("同じである")
        } else {
            print("同じでない")
        }
        
    }
}

