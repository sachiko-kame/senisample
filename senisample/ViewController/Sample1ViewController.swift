//
//  Sample1ViewController.swift
//  senisample
//
//  Created by 水野祥子 on 2018/07/29.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

protocol Sample1ViewControllerDelegate: class {
    func pushProductPage(productId: Int)
}

class Sample1ViewController: UIViewController {
    
     weak var transitionDelegate: Sample1ViewControllerDelegate?
    let sampleButton = UIButton()
    let sample1Button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.gray
        
        sampleButton.standard(Y:200)
        sample1Button.standard(Y:300)
        
        sampleButton.addTarget(self, action: #selector(buttonTap(sender:)), for: .touchUpInside)
        sample1Button.addTarget(self, action: #selector(button1Tap(sender:)), for: .touchUpInside)
        
        self.view.addSubview(sampleButton)
        self.view.addSubview(sample1Button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func buttonTap(sender: UIButton) {
        self.transitionDelegate?.pushProductPage(productId: 0)
    }
    
    @objc func button1Tap(sender: UIButton) {
        self.transitionDelegate?.pushProductPage(productId: 10)
    }
}
