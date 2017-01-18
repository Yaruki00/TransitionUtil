//
//  UIViewController+Transition.swift
//  TransitionUtil
//
//  Created by Yuta Kawabe on 2017/01/18.
//  Copyright © 2017年 Yuta Kawabe. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    func presentWithParams(target: UIStoryboard.ViewController, params: [String: Any?], animated: Bool, completion: (() -> Void)?) {

        let vc = self.instantiateAndSetParams(target: target, params: params)

        self.present(vc, animated: animated, completion: completion)
    }

    func navigationPushWithParams(target: UIStoryboard.ViewController, params: [String: Any?], animated: Bool) {

        let vc = self.instantiateAndSetParams(target: target, params: params)

        self.navigationController?.pushViewController(vc, animated: animated)
    }

    func instantiateAndSetParams(target: UIStoryboard.ViewController, params: [String: Any?]) -> UIViewController {
        
        let vc = UIStoryboard.instantiateViewController(target: target)
        
        for (key, value) in params {
            vc.setValue(value, forKey: key)
        }

        return vc
    }
}
