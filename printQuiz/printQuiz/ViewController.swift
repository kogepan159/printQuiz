// 68日目 キーボード入力
// 67日目の正解は「2」でした

// 前提条件: このViewControllerを開いた時の処理
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var quizTextField: UITextField!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.quizTextField.delegate = self
        NotificationCenter.default.addObserver(forName: UITextField.textDidChangeNotification, object: quizTextField, queue: .main) { (notification) in
            print(self.quizTextField.text)
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    /*
    UITextFieldが編集された直後に呼ばれるデリゲートメソッド.
    */

    func textFieldDidBeginEditing(_ textField: UITextField){

        print("textFieldDidBeginEditing:" + textField.text!)
    }

    /*
    UITextFieldが編集終了する直前に呼ばれるデリゲートメソッド.
    */

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {

        print("textFieldShouldEndEditing:" + textField.text!)
        return true
    }

    /*
    改行ボタンが押された際に呼ばれるデリゲートメソッド.
    */

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる処理
        textField.resignFirstResponder()
        return true
    }
}

