// 69日目 progressView
// 68日目の正解は「1111」でした
// 今回お世話になったURL: https://qiita.com/fromage-blanc/items/2ec7c89c3484765acf8f

// 前提条件: このViewControllerを開いた時の処理
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    var progress:Float = 0.0
    var timer:Timer!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress = 0
        quizLabel.text = "please wait ..."
        /// タイマー
        timer = Timer.scheduledTimer(timeInterval: 0.01,
                             target: self,
                             selector: #selector(ViewController.timerUpdate),
                             userInfo: nil,
                             repeats: true)
    }
    
    @objc func timerUpdate() {
        progress = progress + 0.001
        if progress < 1.1 {  // 浮動小数点誤差のため、<= 1.0 だとtrueにならないことがある
            progressView.setProgress(progress, animated: true)
        } else {
            timer.invalidate()
            print(progressView.progress)
            quizLabel.text = "Complete !"
        }
    }
    
}

