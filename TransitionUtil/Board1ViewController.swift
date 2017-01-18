//
//  Board1ViewController.swift
//  TransitionUtil
//
//  Created by Yuta Kawabe on 2017/01/18.
//  Copyright © 2017年 Yuta Kawabe. All rights reserved.
//

import Foundation
import UIKit

class Board1ViewController: UIViewController {

    @IBOutlet weak var param1Label: UILabel!

    var param1 = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.param1Label.text = param1
    }

    @IBAction func back(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
