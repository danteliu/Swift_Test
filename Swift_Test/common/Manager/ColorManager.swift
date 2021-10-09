//
//  ColorManager.swift
//  Swift_Test
//
//  Created by liu dante on 2021/10/9.
//

import Cupcake
import UIKit

/// 颜色管理器
class ColorManager {
    /// 单例-严格的单例写法
    static let shared = ColorManager()

    /// 私有化构造方法，不允许外界创建实例
    private init() {
    }

    /// 获取随机颜色
    func randomCor() -> UIColor {
        return Color("random")!
    }
}
