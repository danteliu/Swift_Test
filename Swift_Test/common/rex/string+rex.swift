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
        let regexTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", Regex)
        return regexTest.evaluate(with: string)
    }

    subscript(_ indexs: ClosedRange<Int>) -> String {
        let beginIndex = index(startIndex, offsetBy: indexs.lowerBound)
        let endIndex = index(startIndex, offsetBy: indexs.upperBound)
        return String(self[beginIndex ... endIndex])
    }

    subscript(_ indexs: Range<Int>) -> String {
        let beginIndex = index(startIndex, offsetBy: indexs.lowerBound)
        let endIndex = index(startIndex, offsetBy: indexs.upperBound)
        return String(self[beginIndex ..< endIndex])
    }

    subscript(_ indexs: PartialRangeThrough<Int>) -> String {
        let endIndex = index(startIndex, offsetBy: indexs.upperBound)
        return String(self[startIndex ... endIndex])
    }

    subscript(_ indexs: PartialRangeFrom<Int>) -> String {
        let beginIndex = index(startIndex, offsetBy: indexs.lowerBound)
        return String(self[beginIndex ..< endIndex])
    }

    subscript(_ indexs: PartialRangeUpTo<Int>) -> String {
        let endIndex = index(startIndex, offsetBy: indexs.upperBound)
        return String(self[startIndex ..< endIndex])
    }

    func testLog() {
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        print(alphabet[..<4]) // ABCD
        print(alphabet[...4]) // ABCDE
        print(alphabet[5 ..< 10]) // FGHIJ
        print(alphabet[5 ... 10]) // FGHIJK
        print(alphabet[11...]) // LMNOPQRSTUVWXYZ
    }
}
