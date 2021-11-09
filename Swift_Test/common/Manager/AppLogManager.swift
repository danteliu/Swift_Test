//
//  AppLogManager.swift
//  Swift_Test
//
//  Created by liu dante on 2021/11/9.
//

import UIKit

class AppLogManager {
    private var step = 0
    init() {
        self.resetStep(start: 0)
    }
    func resetStep(start:Int) -> Void {
        step=start;
        print("\n初始化日志成功:\(step)")
    }
    
    /// 使用前请初始化step
    func nextStep(log:String) -> Void {
        step+=1
        print("第 \(step) 步 -> \(log)")
    }
    
    func nextStepForUDID(log:String) -> Void {
        print("\(self.getUDIDString()) 日志 -> \(log)")
    }
    func getUDIDString() -> String {
        let randomString =  UUID().uuidString
        return randomString.replacingOccurrences(of:"-", with:"")
    }
    
}
