//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 以下格式错误（强迫症福音😂）：
 let a= 1 + 2
 let a = 1+ 2
 */
let a = 1 + 2

// 类型别名
typealias Feet = Int
var distance: Feet = 100

// 变量输出
var 您好 = "您好"
print("\(您好)")

// 可选(Optionals)类型
var optionalInt1: Int?
var optionalInt2: Optional<Int>
optionalInt1 = 42
if optionalInt1 != nil {
//    print(optionalInt1)
    print(optionalInt1!)    // 强制解析
} else {
    print("optionalInt1 = nil")
}
// 可选绑定
if let optionalInt1Temp = optionalInt1 {
    print(optionalInt1Temp)
}
// 自动解析
var optionalInt3: Int!
optionalInt3 = 44
if optionalInt3 != nil {
    print(optionalInt3)
} else {
    print("optionalInt3 = nil")
}

// 比较运算符
var A = 10
var B = 20
print("A == B 结果为：\(A == B)")

// 循环类型
for index in 1..<5 {
    print("\(index) * 5 = \(index * 5)")
}

// 条件语句
var index = 10
switch index {
case 100:
    print("index 的值为 100")
    fallthrough // 控制转移语句
case 10, 15:
    print("index 的值为 10 或 15")
    fallthrough
case 5:
    print("index 的值为 5")
default:
    print("默认 case")
}

// 控制转移语句
var index2 = 10
while index2 < 15 {
    index2 += 1
    for indexTemp in index2...15 {
        if indexTemp == 12 {
            break
        }
        print("for 中 index2 的值为 \(index2)")
    }
    print("while 中 index2 的值为 \(index2)")
}
