//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 以下格式错误（强迫症福音😂）：
 let a= 1 + 2
 let a = 1+ 2
 */
let a = 1 + 2

typealias Feet = Int
var distance: Feet = 100

var 您好 = "您好"
print("\(您好)")

var optionalInt1: Int?
var optionalInt2: Optional<Int>
optionalInt1 = 42
optionalInt1!
if optionalInt1 != nil {
//    print(optionalInt1)
    print(optionalInt1!)
} else {
    print("optionalInt1 = nil")
}
if let optionalInt1Temp = optionalInt1 {
    print(optionalInt1Temp)
}

var A = 10
var B = 20
print("A == B 结果为：\(A == B)")

for index in 1..<5 {
    print("\(index) * 5 = \(index * 5)")
}
