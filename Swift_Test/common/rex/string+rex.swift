//
//  string+rex.swift
//  Swift_Test
//
//  Created by liu dante on 2021/9/9.
//

import UIKit

extension String {
    /// 判断字符中是否有中文和英文字母
    func validateChineseAndEnglish(string: String) -> Bool {
        if string.count == 0 {
            return false
        }
        let Regex = "^[\\u4E00-\\u9FA5A-Za-z]+$"
        let regexTest:NSPredicate = NSPredicate(format: "SELF MATCHES %@", Regex)
        return regexTest.evaluate(with: string)
    }
}
