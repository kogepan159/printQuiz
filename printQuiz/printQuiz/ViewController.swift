// 75日目 loadingマーク
// 74日目の正解は「hello」でした
// 今回参考にしたサイト: https://qiita.com/rymshm/items/5fbff3283c0439e73117

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
        
        sampleFunc()
    }
    
    func sampleFunc() {
          // ローディング開始
          startIndicator()
          DispatchQueue.global(qos: .default).async {
            // 重い処理や通信処理
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.dismissIndicator()
            }
          }
      }
}

extension UIViewController {

    func startIndicator() {
        let loadingIndicator = UIActivityIndicatorView(style: .large)
        loadingIndicator.center = self.view.center
        self.view.addSubview(loadingIndicator)
        self.view.bringSubviewToFront(loadingIndicator)
        loadingIndicator.startAnimating()
    }

    func dismissIndicator() {
        print(self.view.subviews.count)
        self.view.subviews.forEach {
            if $0 is UIActivityIndicatorView {
                $0.removeFromSuperview()
            }
        }
    }

}

