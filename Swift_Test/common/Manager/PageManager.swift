//
//  PageManager.swift
//  Swift_Test
//
//  Created by liu dante on 2021/10/9.
//

import UIKit

/// 页面管理器
class PageManager {
    private var page = 0
    private var record = 0
    /// 初始化页面管理器
    init() {
        resetPage()
    }

    /// 指定初始化页面
    init(page: Int) {
        record = page
        resetPage()
    }

    /// 重置页面
    func resetPage() {
        page = record
    }

    /// 步进+1
    func addStep() {
        page = page + 1
    }

    /// 获取当前页
    func getCurrentPage() -> Int {
        return page
    }
}
