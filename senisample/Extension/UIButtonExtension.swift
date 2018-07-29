//
//  UIButtonExtension.swift
//  senisample
//
//  Created by 水野祥子 on 2018/07/29.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

let main = UIScreen.main.bounds.size

extension UIButton{
    
    func standard(Y:CGFloat){
        self.setTitle("ボタン", for: .normal)
        self.setTitleColor(UIColor.white, for: .normal)
        self.backgroundColor = UIColor.sample
        self.frame.size = CGSize(width:150, height:60)
        self.frame.origin = CGPoint(x:(main.width/2) - (self.frame.size.width/2), y:Y)
    }
    
}

