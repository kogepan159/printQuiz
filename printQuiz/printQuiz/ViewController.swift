// 50日目 UISegment
// 49日目の正解は「同じである」でした

// 前提条件: このViewControllerを開いた時の処理
import UIKit
class ViewController: UIViewController {
    
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(quizSegment.selectedSegmentIndex)
    }

}

