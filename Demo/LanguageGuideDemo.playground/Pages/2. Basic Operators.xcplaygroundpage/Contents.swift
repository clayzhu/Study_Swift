//: [Previous](@previous)

import Foundation

//: # 算术运算符
//: ## 求余运算符
let remainder = 9 % -4
let remainder2 = 9 % 4

//: # 比较运算符
(1, 2, 3, 4, 5, 6) < (1, 2, 3, 4, 5, 6)
//(1, 2, 3, 4, 5, 6, 7) == (1, 2, 3, 4, 5, 6, 7)    // Swift 标准库只能比较七个以内元素的元组比较函数。如果你的元组元素超过七个时，你需要自己实现比较运算符。

//: # 空合运算符
let defaultColor = "red"
var userColor: String?
var colorToUse = userColor ?? defaultColor

userColor = "green"
colorToUse = userColor ?? defaultColor

//: # 区间运算符
let names = ["Anna", "Alex", "Brian", "Jack"]
// ## 单侧区间
for name in names[2...] {
    print(name)
}
for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(5)
range.contains(7)

//: [Next](@next)
