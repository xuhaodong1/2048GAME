//
//  CheckerBoardView.swift
//  UITest
//
//  Created by 徐皓东 on 2020/10/15.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import UIKit

class CheckerBoardView: UIView {
    var boardPieces: [PieceView]!
    var demension: Int!
    var pieceLength: CGFloat!
    var cornerRadius: CGFloat!
    var padding: CGFloat!
    
    class func gameboardWithDemension(demension: Int,
                                      cellWith: CGFloat,
                                      cellPadding: CGFloat,
                                      cornerRadius: CGFloat,
                                      backgroundColor: UIColor,
                                      foregroundColor: UIColor) -> CheckerBoardView {
        let boardLength = cellPadding + (cellWith + cellPadding) * CGFloat(demension)
        let board = CheckerBoardView.init(frame: CGRect.init(x: 0,
                                                             y: 0,
                                                             width: boardLength,
                                                             height: boardLength))
        board.cornerRadius = cornerRadius
        board.demension = demension
        board.padding = cellPadding
        board.pieceLength = cellWith
        board.layer.cornerRadius = cornerRadius
        board.setupBoardWithBackgroundColor(backgroundColor: backgroundColor, foregroundColor: foregroundColor)
        return board
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CheckerBoardView {
    func setupBoardWithBackgroundColor(backgroundColor: UIColor,
                                       foregroundColor: UIColor) {
        self.backgroundColor = backgroundColor
        var xCursor = self.padding!
        var yCursor = self.padding!
        let cornerRadius = self.cornerRadius > 2.0 ? self.cornerRadius - 2.0 : 0
        for _ in 0..<demension {
            yCursor = self.padding!
            for _ in 0..<demension {
                let view = UIView.init(frame: CGRect.init(x: xCursor, y: yCursor, width: self.pieceLength, height: self.pieceLength))
                view.backgroundColor = foregroundColor
                view.layer.cornerRadius = cornerRadius
                self.addSubview(view)
                yCursor += (padding + pieceLength)
            }
            xCursor += (padding + pieceLength)
        }
    }
}
