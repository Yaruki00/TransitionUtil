//
//  Board2ViewController.swift
//  TransitionUtil
//
//  Created by Yuta Kawabe on 2017/01/18.
//  Copyright © 2017年 Yuta Kawabe. All rights reserved.
//

import Foundation
import UIKit

class Board2ViewController: UIViewController {
    
    @IBOutlet weak var param2Label: UILabel!
    @IBOutlet weak var param3Label: UILabel!

    var param2 = 0
    var param3: String? = "aaa"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.param2Label.text = "\(self.param2)"
        if let param3 = self.param3 {
            self.param3Label.text = param3
        }
        else {
            self.param3Label.text = "Nil"
        }
    }

    @IBAction func back(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)
    }
}
