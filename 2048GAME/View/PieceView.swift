//
//  PieceView.swift
//  UITest
//
//  Created by 徐皓东 on 2020/10/15.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import UIKit
class PieceView: UIView {
    var value: Int! {
        willSet(newValue) {
            changeStatus(newValue: newValue)
        }
    }
    var numLabel: UILabel!
    var size: CGSize!
    
    class func pieceWith(position: CGPoint, size: CGSize, value: Int, corcerRadius: CGFloat) -> PieceView{
        let view = PieceView.init(frame: CGRect.init(origin: position, size: size))
        view.value = value
        view.layer.cornerRadius = corcerRadius
        return view
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension PieceView {
    func setupUI() {
        /// 设置数字标签
        numLabel = UILabel.init()
        numLabel.frame = CGRect.init(origin: CGPoint.zero, size: .init(width: self.frame.width, height: self.frame.width))
        numLabel.adjustsFontSizeToFitWidth = true
        numLabel.minimumScaleFactor = 0.5
        numLabel.textAlignment = .center
        numLabel.font = UIFont.fontForNumbers()
        self.addSubview(numLabel)
    }
    
    func changeStatus(newValue: Int) {
        self.numLabel.text = "\(newValue)"
        self.backgroundColor = UIColor.pieceColorForValue(value: newValue)
        self.numLabel.textColor = UIColor.numberColorForValue(value: newValue)
    }
}
