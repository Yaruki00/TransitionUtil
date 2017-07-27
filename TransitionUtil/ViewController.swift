//
//  ViewController.swift
//  TransitionUtil
//
//  Created by Yuta Kawabe on 2017/01/18.
//  Copyright © 2017年 Yuta Kawabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hello travis!!
    }

    @IBAction func transitionToBoard1(_ sender: AnyObject) {
        let params: [String: Any?] = [
            "param1" : "Hello!",
        ]
        self.presentWithParams(target: .Board1ViewController, params: params, animated: true, completion: nil)
    }

    @IBAction func transitionToBoard2(_ sender: AnyObject) {
        let params: [String: Any?] = [
            "param2" : 12345,
            "param3" : nil
        ]
        self.navigationPushWithParams(target: .Board2ViewController, params: params, animated: true)
    }
}
