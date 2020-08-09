// 47日目 UIViewController
// 46日目の正解は「viewDidAppear」でした


// 前提条件: このViewControllerを開いた時の処理
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.view.frame.minX)
    }

}

