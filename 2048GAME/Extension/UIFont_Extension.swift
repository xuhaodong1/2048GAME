//
//  UIFont_Extension.swift
//  UITest
//
//  Created by 徐皓东 on 2020/10/16.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import UIKit
extension UIFont {
    class func fontForNumbers() -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Bold", size: 20.0)!
    }
    
    class func fontForScorce() -> UIFont {
        return UIFont.init(name: "HelveticaNeue-Bold", size: 16.0)!
    }
}
