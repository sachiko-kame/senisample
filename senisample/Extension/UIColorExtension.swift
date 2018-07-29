//
//  UIColorExtension.swift
//  senisample
//
//  Created by 水野祥子 on 2018/07/29.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func rgbColor(rgbValue: UInt) -> UIColor{
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    class var sample: UIColor {
        return UIColor.rgbColor(rgbValue: 0x00ACED)
    }
    
    class var samplealpha: UIColor {
        return  UIColor(red: 3, green: 3, blue: 3, alpha: 0.8)
    }
}

