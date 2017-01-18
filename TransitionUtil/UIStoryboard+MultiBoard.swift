//
//  UIStoryboard+MultiBoard.swift
//  TransitionUtil
//
//  Created by Yuta Kawabe on 2017/01/18.
//  Copyright © 2017年 Yuta Kawabe. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {

    enum ViewController: String {
        case ViewController
        case Board1ViewController
        case Board2ViewController
    }

    static func instantiateInitialViewController() -> UIViewController? {
        return UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
    }

    static func instantiateViewController(target: ViewController) -> UIViewController {
        
        switch target {
        case .ViewController:
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: target.rawValue)
            
        case .Board1ViewController:
            return UIStoryboard(name: "Board1", bundle: nil).instantiateViewController(withIdentifier: target.rawValue)
            
        case .Board2ViewController:
            return UIStoryboard(name: "Board2", bundle: nil).instantiateViewController(withIdentifier: target.rawValue)
        }
    }
}
