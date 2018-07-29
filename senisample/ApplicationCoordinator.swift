//
//  ApplicationCoordinator.swift
//  senisample
//
//  Created by 水野祥子 on 2018/07/29.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ApplicationCoordinator: NSObject, SampleViewControllerDelegate, Sample1ViewControllerDelegate {

    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        let initVc: Sample1ViewController = Sample1ViewController()
        initVc.transitionDelegate = self
        
        let nvc = UINavigationController(rootViewController: initVc)
        window.rootViewController = nvc
        window.makeKeyAndVisible()
    }
    
    func pushProductPage(productId: Int) {
        switch productId {
        case 0:
            let initVc: SampleViewController = SampleViewController()
            initVc.transitionDelegate = self
            (self.window.rootViewController as! UINavigationController).pushViewController(initVc, animated: true)
        case 1:
            let initVc: Sample1ViewController = Sample1ViewController()
            initVc.transitionDelegate = self
            (self.window.rootViewController as! UINavigationController).pushViewController(initVc, animated: true)
        default:
            //root 変更
            (self.window.rootViewController as! UINavigationController).popToRootViewController(animated: false)
            
            let initVc: SampleViewController = SampleViewController()
            initVc.transitionDelegate = self

            let nvc = UINavigationController(rootViewController: initVc)
            window.rootViewController = nvc
            window.makeKeyAndVisible()
        }
    }

}
