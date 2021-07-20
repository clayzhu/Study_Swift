//: [Previous](@previous)

import Foundation

// # 字符串字面量
// ## 多行字符串字面量
let quotation = """
I am
Clay
"""

let singleLine = "some string"
let multiLine = """
some \
string
"""
let isSame = singleLine == multiLine
let multiLine2 = """
    some \
        string
    """
let isSame2 = multiLine == multiLine2

// ## 扩展字符串分隔符
let delimiterStr = #"some\nstring"#
let delimiterStr2 = #"some\#nstring"#
print(delimiterStr)
print(delimiterStr2)
let isSame3 = delimiterStr == delimiterStr2

//: [Next](@next)
