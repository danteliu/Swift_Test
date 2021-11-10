//
//  AppLogManager.swift
//  Swift_Test
//
//  Created by liu dante on 2021/11/9.
//

import UIKit

class AppLogManager {
    private var step = 0
    /// 单例-严格的单例写法
    static let shared = AppLogManager()
    
    private init() {
        self.resetStep(start: 0)
    }
    
    func resetStep(start:Int) -> Void {
        step=start;
        print("\n初始化日志成功:\(step)")
    }
    
    /// 使用前请初始化step #function 打印当前函数名
    func nextStep(log:String) -> Void {
        
        print("第 \(step) 步 -> \(log)")
        step+=1
    }
    
    func nextStepForUDID(log:String) -> Void {
        print("\(self.getUDIDString()) 日志 -> \(log)")
    }
    func getUDIDString() -> String {
        let randomString =  UUID().uuidString
        return randomString.replacingOccurrences(of:"-", with:"")
    }
    
}
