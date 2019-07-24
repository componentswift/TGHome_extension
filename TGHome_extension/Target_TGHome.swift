//
//  Target_TGHome.swift
//  TGHome_extension
//
//  Created by tangmengze on 2019/7/23.
//  Copyright © 2019 tangmengze. All rights reserved.
//

import Foundation
import UIKit

class Target_TGHome: NSObject {
    
    @objc func Action_viewController(_ params:[AnyHashable:Any]?) -> UIViewController {
        
        if let actionParams = params {
            if let callback = actionParams["callback"] as? (String) -> Void {
                callback("success")
            }
        }
        
        let vc = ViewController()
        return vc
    }
    
    
//    func Action_viewController(params:NSDictionary) -> UIViewController {
//
//    }
//    // 错误的Action声明：方法带上了Argument Label
//    func Action_viewController(viewControllerParams params:[AnyHashable:Any]?) -> UIViewController {
//
//    }
//
//    // 错误的Action声明：方法带上了Argument Label
//    func Action_viewController(params:[AnyHashable:Any]?) -> UIViewController {
//
//    }

}
