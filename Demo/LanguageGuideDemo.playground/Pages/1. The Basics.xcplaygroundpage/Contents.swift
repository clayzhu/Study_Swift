//: [Previous](@previous)

import Foundation

// # 数值型字面量
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// # 类型别名
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound 现在是 0
var maxAudioSample = AudioSample.max

// # 元组
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error
let http200Status = (statusCode: 200, description: "OK")

// # 可选类型
var serverResponseCode: Int? = 404
if serverResponseCode != nil {
    print("serverResponseCode: \(serverResponseCode!)")
}
if let code = serverResponseCode {
    print("serverResponseCode: \(code)")
}
serverResponseCode = nil

if let firstNum = Int("4"), let secondNum = Int("42"), firstNum < secondNum && secondNum < 100 {
    print("\(firstNum) < \(secondNum) < 100")
}

let possibleString: String? = "An optional string." // 普通可选类型
let forcedString: String = possibleString! // 需要感叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string." // 隐式解析可选类型
let implicitString: String = assumedString  // 不需要感叹号

// # 断言和先决条件
//let age = -3
let age = 3
assert(age >= 0, "A person's age cannot be less than zero")
// 因为 age < 0，所以断言会触发

precondition(age >= 0, "A person's age cannot be less than zero")

//fatalError("Unimplemented")

//: [Next](@next)
