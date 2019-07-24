//
//  TGHomeCTM.swift
//  TGHome_extension
//
//  Created by tangmengze on 2019/7/23.
//  Copyright © 2019 tangmengze. All rights reserved.
//

//import Foundation
import CTMediator

public extension CTMediator {
    // 如果这个方法也要给Objective-C工程调用，就需要加上@objc
    @objc func TGHome_Controller(callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"TGHome" // 需要给到module名
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("TGHome", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}

