// 55日目 UITableview_Section複数
// 54日目の正解は「40」でした

// 前提条件: このViewControllerを開いた時の処理
import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var quizLabel: UILabel!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.reloadData()
        tableview.tableFooterView = UIView()
        
        quizLabel.text = "aaaaa"
        quizLabel.backgroundColor = UIColor.red//(R:1.0 G:1.0 B:1.0 A:1.0) 範囲 0~1
    }
    
}


extension ViewController:  UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // ここのPrintをお答えください
        print(section)
        return "果物リスト"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = fruitsArray[indexPath.row] + String(indexPath.row)
        
        if indexPath.row == 2 {
            
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // タップされた時の処理
    }
    
}
