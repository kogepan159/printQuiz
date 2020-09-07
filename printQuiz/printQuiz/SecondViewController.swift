//
//  SecondViewController.swift
//  printQuiz
//
//  Created by Junya Kengo on 2020/09/07.
//  Copyright © 2020 Junya Kengo. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var testTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("2番目")
        
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
