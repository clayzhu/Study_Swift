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

// 空字符串
//var stringA: String
// 使用字符串字面量创建空字符串
var stringA = ""
if stringA.isEmpty {
    print("stringA 是空的")
} else {
    print("stringA 不是空的")
}
// 实例化 String 类来创建空字符串
var stringB = String()
if stringB.isEmpty {
    print("stringA 是空的")
} else {
    print("stringA 不是空的")
}

// 字符串连接
let constA = "菜鸟教程："
let constB = "http://www.runoob.com"
let constC = constA + constB
print(constC)
// 检查字符串是否拥有特定前缀
var hasPrefix: Bool = constC.hasPrefix(constA)
// 比较两个字符串，对两个字符串的字母逐一比较
var less: Bool = constA < constC

// 遍历字符串中的字符
var stringC = "Clay"
for char in stringC.characters {
    print(char)
}

// 字符串连接字符
var varA: String = "Hello"
var varB: Character = "C"
varA.append(varB)

// 创建数组
var someInts = [Int](repeating: 10, count: 3)
var someInts2 = [Int]()
var someInts3: [Int] = [10, 10, 10]
var someInts4 = [10, 10, 10]
// 访问数组
var someVar = someInts[0]
print("第一个元素的值 \(someVar)")
// 添加元素
someInts.append(20)
someInts += [30]
// 通过索引修改数组元素的值
someInts[2] = 11
print(someInts)
// 遍历数组
for (index, item) in someInts.enumerated() {
    print("index:\(index), value:\(item)")
}

// 创建字典
var someDict = [Int: String]()
var someDict2: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
var someDict3 = [1: "One", 2: "Two", 3: "Three"]
// 访问字典
var someDictValue = someDict2[1]
//print("key = 1 的值为 \(someDictValue)")
print("key = 1 的值为 \(someDictValue!)")
// 修改字典
var oldDictValue = someDict2.updateValue("One New", forKey: 1)  // 返回旧值或 nil
var newDictValue = someDict2[1]
var oldDictValue2 = someDict2[2]
someDict2[2] = "Two New"
var newDictValue2 = someDict2[2]
// 移除 Key-Value 对
var removedDictValue = someDict2.removeValue(forKey: 2) // 返回移除的值或 nil
someDict2[2] = nil
print(someDict2)
// 遍历字典
for (key, value) in someDict2 {
    print("key:\(key), value:\(value)")
}
for (index, value) in someDict2.enumerated() {
    print("index:\(index), value:\(value)")
}
print("someDict2 含有 \(someDict3.count) 个键值对")
print("someDict3.isEmpty = \(someDict.isEmpty)")

// 元组
let http404Error = (404, "Not Found")
// http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
// 元组的内容分解
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")
// 通过下标来访问元组中的单个元素
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")
// 给单个元素命名
let http200Status = (statusCode: 200, description: "OK")
//let http200Status = (statusCode: 200, "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

// 函数
// 局部参数名
func runoob(name: String, site: String) -> String {
//    return (name + site)
    return name + ": " + site
}
print(runoob(name: "菜鸟教程", site: "www.runoob.com"))
// 外部参数名
func pow(firstArg a: Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
    return res
}
pow(firstArg:5, secondArg:3)
// 可变参数
func vari<N>(members: N...) {   // 这是任意参数类型吗？
    for i in members {
        print(i)
    }
}
vari(members: 1, 2)
vari(members: "A", "B", "C")
// 常量，变量及 I/O 参数
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}
var x = 1, y = 5
swap(&x, &y)
print("x 现在的值 \(x), y 现在的值 \(y)")
// 函数类型
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum
print("输出结果：\(addition(40, 89))")
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("输出结果：\(addition(a, b))")
}
another(addition: sum, a: 10, b: 20)
// 函数嵌套
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())

// 闭包
let studname = { print("Swift 闭包实例。") }
studname()
let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let result = divide(200, 20)
print(result)
// 闭包表达式
// sorted 方法
let names = ["AT", "AE", "D", "S", "BE"]
// 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool
func descending(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var ascendingName = names.sorted()  // 升序
var descendingName = names.sorted(by: descending)   // 降序
var descendingName2 = names.sorted(by: { $0 > $1})  // 参数名称缩写
print(descendingName2)
var descendingName3 = names.sorted(by: >)   // 运算符函数
var descendingName4 = names.sorted() {$0 > $1}  // 尾随闭包
print(descendingName4)
