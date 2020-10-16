//
//  SoreceView.swift
//  UITest
//
//  Created by 徐皓东 on 2020/10/16.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import UIKit

let SCORCEVIEW_DEFAULT_FRAME = CGRect.init(x: 0, y: 0, width: 140, height: 40)

class ScorceView: UIView {
    var scorce: Int! {
        willSet(newValue) {
            scorceLabel.text = "SCORE: \(newValue!)"
        }
    }
    var scorceLabel: UILabel!
    class func scorceWith(cornerRadius: CGFloat,
                    backgroundColor: UIColor,
                    textColor: UIColor,
                    textFont: UIFont) -> ScorceView {
        let view = ScorceView.init(frame: SCORCEVIEW_DEFAULT_FRAME)
        view.scorce = 0
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = cornerRadius
        view.isUserInteractionEnabled = true
        view.scorceLabel.textColor = textColor
        view.scorceLabel.font = textFont
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

extension ScorceView {
    func setupUI() -> Void {
        scorceLabel = UILabel.init(frame: SCORCEVIEW_DEFAULT_FRAME)
        scorceLabel.textAlignment = .center
        self.addSubview(scorceLabel)
    }
}
