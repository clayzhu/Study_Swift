//: [Previous](@previous)

import Foundation

//: # 字符串字面量
//: ## 多行字符串字面量
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

//: ## 扩展字符串分隔符
let delimiterStr = #"some\nstring"#
let delimiterStr2 = #"some\#nstring"#
print(delimiterStr)
print(delimiterStr2)
let isSame3 = delimiterStr == delimiterStr2

//: # 连接字符串和字符
let exclamationMark: Character = "!"
var welcome = "hello" + " "
welcome.append("there")
welcome.append(exclamationMark)

//: # Unicode
//: > 建议阅读：[https://juejin.cn/post/6844903543279730702](https://juejin.cn/post/6844903543279730702)
//: ## 可扩展的字形群集
let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let enclosedEAcute: Character = "\u{E9}\u{20DD}"

let regionalIndicatorForU: Character = "\u{1F1FA}"
let regionalIndicatorForS: Character = "\u{1F1F8}"
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

//: # 访问和修改字符串
//: ## 字符串索引
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

//: # 子字符串
var beginning = greeting[..<index]
print("String: \(greeting)")
print("Substring: \(beginning)")
beginning.remove(at: greeting.index(greeting.startIndex, offsetBy: 5))
print("String: \(greeting)")
print("Substring: \(beginning)")

//: # 比较字符串
//: ## 字符串/字符相等
if eAcute == combinedEAcute {
    print("These two strings are considered equal.")
}

//: [Next](@next)
