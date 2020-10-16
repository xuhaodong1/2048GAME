//
//  UITestTests.swift
//  UITestTests
//
//  Created by 徐皓东 on 2020/10/15.
//  Copyright © 2020 徐皓东. All rights reserved.
//

import XCTest

class UITestTests: XCTestCase {
    
    /// 初始化代码, 这个方法将在每一个测试方法执行前调用
    override func setUpWithError() throws {
        
    }
    
    /// 释放测试用例代码, 这个方法将在每一个测试方法执行后调用
    override func tearDownWithError() throws {
        
        
    }
    
    /// 测试方法(每一个测试方法都必须以test开头)
    func testExample() {
        
        
    }
    
    func testVC() throws {
        
    }
    
    /// 测试性能示例
    func testPerformanceExample() throws {
        
        self.measure {
            for i in 0...10 {
                var date = Date.init()
                print(date.description)
            }
        }
    }

}
