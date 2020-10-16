//
//  UIColor_Extension.swift
//  UITest
//
//  Created by 徐皓东 on 2020/10/15.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import UIKit

extension UIColor {
    class func pieceColorForValue(value: Int) -> UIColor {
        switch value {
            case 2:
                return UIColor.colorWithRGB(r: 238, g: 228, b: 218)
            case 4:
                return UIColor.colorWithRGB(r: 237, g: 224, b: 200)
            case 8:
                return UIColor.colorWithRGB(r: 242, g: 177, b: 121)
            case 16:
                return UIColor.colorWithRGB(r: 245, g: 149, b: 99)
            case 32:
                return UIColor.colorWithRGB(r: 246, g: 124, b: 95)
            case 64:
                return UIColor.colorWithRGB(r: 246, g: 94, b: 59)
            default:
                return UIColor.lightGray
        }
    }
    
    class func numberColorForValue(value: Int) -> UIColor {
        switch value {
            case 2, 4:
                return UIColor.colorWithRGB(r: 119, g: 110, b: 101)
            default:
                return UIColor.white
        }
    }
 
    class func colorWithRGB(r: Int, g: Int, b: Int, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
}
