//
//  ViewController.swift
//  UITest
//
//  Created by 徐皓东 on 2020/10/15.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

extension ViewController {
    func setupUI(){
        /// 设置导航栏刷新按钮
        let refreshBtn = UIBarButtonItem.init(barButtonSystemItem: .refresh, target: self, action: #selector(refreshGame))
        self.navigationItem.rightBarButtonItem = refreshBtn
        
        let boardView = CheckerBoardView.gameboardWithDemension(demension: 4, cellWith: 60, cellPadding: 12, cornerRadius: 6, backgroundColor: UIColor.black, foregroundColor: UIColor.darkGray)
        let scorceView = ScorceView.scorceWith(cornerRadius: 6, backgroundColor: UIColor.darkGray, textColor: UIColor.white, textFont: UIFont.fontForScorce())
        self.view.addSubview(boardView)
        self.view.addSubview(scorceView)
        scorceView.frame.origin.x = 0
        scorceView.frame.origin.y = 0
        boardView.center = self.view.center
    }
}

extension ViewController {
    @objc func refreshGame() {
        print("重置游戏")
    }
}

