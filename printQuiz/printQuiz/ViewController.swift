// 56日目 UIWebView複数
// 55日目の正解は「0」でした

// 前提条件: このViewControllerを開いた時の処理
import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizSegment: UISegmentedControl!
    @IBOutlet weak var quizButton: UIButton!
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var quizLabel: UILabel!
    let fruitsArray = ["みかん","もも", "バナナ", "リンゴ", "すいか"]
    
    var webView: WKWebView!
    
    // adjust SafeArea top space
    // portrait のみを想定
    var topPadding:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.reloadData()
        tableview.tableFooterView = UIView()
        
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        let rect = CGRect(x: 0,y: topPadding, width: screenWidth, height: screenHeight - topPadding)
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: rect, configuration: webConfiguration)
        let webUrl = URL(string: "https://www.google.com/?hl=ja")!
        let myRequest = URLRequest(url: webUrl)
        webView.load(myRequest)
        // ここのPrintをお答えください
        print(webUrl.absoluteString)
        
        self.view.addSubview(webView)
               
        
    }
    
}


extension ViewController:  UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
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
