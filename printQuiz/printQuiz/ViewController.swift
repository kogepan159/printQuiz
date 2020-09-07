// 78日目 閉じる処理追加
// 77日目の正解は「2番目」でした
// 今回参考にしたサイト: https://qiita.com/rymshm/items/5fbff3283c0439e73117

// 問題: 2番目の画面から、戻ってきたときに最後にPrintされたものは？
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizButtonTopLayout: NSLayoutConstraint!
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    let count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(fruitsArray[count])
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            // identifierが取れなかったら処理やめる
            return
        }
         
        if(identifier == "goNext") {
            // NavigationControllerの一番目のViewControllerが次の画面
            let vc = segue.destination as! SecondViewController
            vc.testTitle = segue as? String ?? ""
          
        }
    }

    @IBAction func nextAction(_ sender: Any) {
        performSegue(withIdentifier: "goNext", sender: "nil")
    }
}

