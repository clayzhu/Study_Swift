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

// 枚举
// 相关值
enum Student {
    case Name(String)
    case Mark(Int, Int, Int)
}
var studDetails = Student.Name("Runoob")
var studMarks = Student.Mark(98, 97, 96)
switch studMarks {
case .Name(let studName):
    print("学生的名字是：\(studName)")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("学生的成绩是：\(Mark1), \(Mark2), \(Mark3)")
}
// 原始值
enum Month: Int {
    case Januray = 1, Febrary, March
    case April, May, June, July, August, September, October, November, December
}
let yearMonthHash = Month.May.hashValue // 从0开始
let yearMonthRaw = Month.May.rawValue   // 从 Januray = 1 开始

// 结构体
struct studentMarks {
    var mark1 = 100
    var mark2 = 78
    var mark3 = 98
}
let marks = studentMarks()
print("Mark1 是 \(marks.mark1)")
struct MarksStruct {
    var mark: Int
    init(markA: Int) {
        self.mark = markA
    }
}
var aStruct = MarksStruct(markA: 98)
var bStruct = aStruct
bStruct.mark = 97
print(aStruct.mark)
print(bStruct.mark)

// 类
class studentMarksClass {
    var mark1 = 100
    var mark2 = 78
    var mark3 = 98
}
let marksInstance = studentMarksClass()
print("Mark1 是 \(marksInstance.mark1)")
// 恒等运算符
class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        self.myProperty = s
    }
}
func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {   // 实现 Equatable 的协议
    return lhs.myProperty == rhs.myProperty
}
let spClass1 = SampleClass(s: "Hello World")
let spClass2 = SampleClass(s: "Hello World")
if spClass1 == spClass2 {
    print("相同的属性值")
}
if spClass1 != spClass2 {
    print("不相同的属性值")
}
if spClass1 === spClass2 {
    print("引用相同的类实例")
}
if spClass1 !== spClass2 {
    print("引用不相同的类实例")
}

// 属性
// 存储属性
struct Number {
    var digits: Int
    let pi = 3.1415
}
var n = Number(digits: 12345)
print("\(n.digits)")
n.digits = 67
print("\(n.digits)")
// 延迟存储属性
class LazySample {
    lazy var lazyName = NameClass()
}
class NameClass {
    var name = "Clay"
}
var nameSample = LazySample()
print(nameSample.lazyName.name)
// 计算属性
class CalculateSample {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle: (Double, Double) {
        get {
            return (length / 2, breadth / 2)
        }
        set {
            no1 = newValue.0 - (length / 2)
            no2 = newValue.1 - (breadth / 2)
        }
//        set(axis) {
//            no1 = axis.0 - (length / 2)
//            no2 = axis.1 - (breadth / 2)
//        }
    }
}
var calculateResult = CalculateSample()
print(calculateResult.middle)
calculateResult.middle = (0.0, 10.0)
print(calculateResult.no1)
print(calculateResult.no2)
// 属性观察器
class Samplepgm {
    var counter: Int = 0 {
        willSet(newTotal) {
//            print("counter：\(counter)")
            print("计数器：\(newTotal)")
        }
        didSet {
            if counter > oldValue {
//                print("counter：\(counter)")
                print("新增数：\(counter - oldValue)")
            }
        }
    }
}
let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800
// 类型属性
struct StudMarksStruct {
    static let markCount = 97
    static var totalCount = 0
    var InternalMarks: Int = 0 {
        didSet {
            if InternalMarks > StudMarksStruct.markCount {
                InternalMarks = StudMarksStruct.markCount
            }
            if InternalMarks > StudMarksStruct.totalCount {
                StudMarksStruct.totalCount = InternalMarks
            }
        }
    }
}
class StudMarksClass {
    class var markCount: Int {
        return 97
    }
    class var totalCount: Int {
        return 0
    }
}
var stud1Mark1 = StudMarksStruct()
var stud1Mark2 = StudMarksStruct()
stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks)
stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)

// 方法
// 在实例方法中修改值类型
struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    mutating func scaleBy(res: Int) {
//        length *= res
//        breadth *= res
        // 在可变方法中给 self 赋值
        self.length *= res
        self.breadth *= res
        
        print(length)
        print(breadth)
    }
}
var val = area(length: 3, breadth: 5)
val.scaleBy(res: 3)
val.scaleBy(res: 30)
val.scaleBy(res: 300)
// 类型方法
class AbsClass {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}
struct AbsStruct {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}
let absClass = AbsClass.abs(number: -35)
let absStruct = AbsStruct.abs(number: -5)
print(absClass)
print(absStruct)

// 下标脚本
struct SubscriptStruct {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
        
//        // Getter, Setter
//        get {
//            return decrementer / index
//        }
//        set(newValue) {
//            // let 常量不能更改值，这里仅作语法示例
//            self.decrementer = newValue;
//        }
    }
}
let division = SubscriptStruct(decrementer: 100)
print("100 / 9 = \(division[9])")
print("100 / 2 = \(division[2])")
// 下标脚本选项
struct MatrixStruct {
    let rows: Int, columns: Int
    var print: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        print = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return print[(row * columns) + column]
        }
        set {
            print[(row * columns) + column] = newValue
        }
    }
}
// 创建了一个新的 3 行 3 列的 MatrixStruct 实例
var mat = MatrixStruct(rows: 3, columns: 3)
// 通过下标脚本设置值
mat[0,0] = 1.0
mat[0,1] = 2.0
mat[1,0] = 3.0
mat[1,1] = 5.0
// 通过下标脚本获取值
print("\(mat)")
print("\(mat[0,0])")
print("\(mat[0,1])")
print("\(mat[1,0])")
print("\(mat[1,1])")

// 继承
class StudDetails {
    var mark1: Int
    var mark2: Int
    init(stm1: Int, results stm2: Int) {
        mark1 = stm1
        mark2 = stm2
    }
    func show() {
        print("Mark1:\(self.mark1), Mark2:\(self.mark2)")
    }
}
class StudTomDetails : StudDetails {
    init() {
        super.init(stm1: 93, results: 89)
    }
}
let tomDetails = StudTomDetails();
tomDetails.show()
// 重写
class CircleClass {
    var radius = 12.5
    func show() {
        print("这是超类")
    }
    var area: String {
        return "矩形的半径为 \(radius)"
    }
}
class RectangleClass : CircleClass {
    var side = 7
    override func show() {  // 重写方法
        print("这是子类")
    }
    override var area: String { // 重写属性
        return super.area + "，但现在被重写为 \(side)"
    }
}
let rect = RectangleClass()
rect.radius = 25.0
rect.side = 3
print("半径：\(rect.area)")
class SquareClass : RectangleClass {
    override var radius: Double {   // 重写属性观察器
        didSet {
            side = Int(radius / 5.0) + 1
        }
    }
}
let square = SquareClass();
square.radius = 100.0
print("半径：\(square.area)")

// 构造过程
// 构造器-构造参数
struct RectangleStruct {
    var length: Double
    var breadth: Double
    var area: Double
    init(fromLength length: Double, fromBreadth breadth: Double) {
        self.length = length
        self.breadth = breadth
        area = length * breadth
    }
    init(fromLeng leng: Double, fromBread bread: Double) {
        self.length = leng
        self.breadth = bread
        area = leng * bread
    }
    //不提供外部名字
    init(_ area: Double) {
        length = area
        breadth = area
        self.area = area * area
    }
}
let area1 = RectangleStruct(fromLength: 6, fromBreadth: 12)
print("面积为：\(area1.area)")
let area2 = RectangleStruct(fromLeng: 36, fromBread: 12)
print("面积为：\(area2.area)")
// 调用不提供外部名字
let rectarea = RectangleStruct(180.0)
print("面积为: \(rectarea.area)")

// 类的继承和构造过程
class MainClass {
    var no1: Int    // 局部存储变量
    // 指定构造器
    init(no1: Int) {
        self.no1 = no1  // 初始化
    }
}
class MainSubClass : MainClass {
    var no2: Int    // 新的子类存储变量
    init(no1: Int, no2: Int) {
        self.no2 = no2  // 初始化
        super.init(no1: no1)    // 初始化超类
    }
    // 便利构造器
    override convenience init(no1: Int) {
        self.init(no1: no1, no2: 0)
    }
}
let res = MainClass(no1: 20)
let res2 = MainSubClass(no1: 30, no2: 50)
let res3 = MainSubClass(no1: 10)
print("res.no1 = \(res.no1)")
print("res2.no1 = \(res2.no1), no2 = \(res2.no2)")
print("res3.no1 = \(res3.no1), no2 = \(res3.no2)")

// 类的可失败构造器
class StudRecord {
    let studname: String
    init?(studname: String) {
        self.studname = studname
        if studname.isEmpty {
            return nil
        }
    }
    init!(stname: String) {
        if stname.isEmpty {
            return nil
        }
        self.studname = stname
    }
}
if let stname = StudRecord(studname: "失败构造器") {
    print("模块为 \(stname.studname)")
}

// 析构过程
var counter = 0
class BaseClass {
    init() {
        counter += 1
    }
    deinit {
        counter -= 1
    }
}
var show: BaseClass? = BaseClass()
print(counter)
show = nil
print(counter)

// 可选链
class Person {
    var residence: Residence?
}
// 定义了一个变量 rooms，它被初始化为一个Room[]类型的空数组
class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        return rooms[i]
    }
    func printNumberOfRooms() {
        print("房间号为 \(numberOfRooms)")
    }
    var address: Address?
}
// Room 定义一个name属性和一个设定room名的初始化器
class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}
// 模型中的最终类叫做Address
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil {
            return buildingNumber
        } else {
            return nil
        }
    }
}
let john = Person()
if john.residence?.printNumberOfRooms() != nil {
    print("输出房间号")
} else {
    print("无法输出房间号")
}

// 自动引用计数（ARC）
// 解决实例之间的循环强引用
// 弱引用实例
class Module {
    let name: String
    init(name: String) {
        self.name = name
    }
    var sub: SubModule?
    deinit {
        print("\(name) 主模块")
    }
}
class SubModule {
    let number: Int
    init(number: Int) {
        self.number = number
    }
    weak var topic: Module?
    deinit {
        print("子模块 topic 数为 \(number)")
    }
}
var toc: Module?
var list: SubModule?
toc = Module(name: "ARC")
list = SubModule(number: 4)
toc!.sub = list
list!.topic = toc
toc = nil
list = nil;
// 无主引用实例
class Module2 {
    let name: String
    init(name: String) {
        self.name = name
    }
    var sub: SubModule2?
    deinit {
        print("\(name) 主模块2")
    }
}
class SubModule2 {
    let number: Int
    init(number: Int, topic: Module2) {
        self.number = number
        self.topic = topic
    }
    unowned var topic: Module2
    deinit {
        print("子模块2 topic 数为 \(number)")
    }
}
var toc2: Module2?
toc2 = Module2(name: "ARC2")
toc2!.sub = SubModule2(number: 4, topic: toc2!)
toc2 = nil

// 类型转换
class Subjects {
    var physics: String
    init(physics: String) {
        self.physics = physics
    }
}
class Chemistry: Subjects {
    var equations: String
    init(physics: String, equations: String) {
        self.equations = equations
        super.init(physics: physics)
    }
}
class Maths: Subjects {
    var formulae: String
    init(physics: String, formulae: String) {
        self.formulae = formulae
        super.init(physics: physics)
    }
}
let sa = [Chemistry(physics: "固体物理", equations: "赫兹"),
          Maths(physics: "流体动力学", formulae: "千兆赫"),
          Chemistry(physics: "热物理学", equations: "分贝"),
          Maths(physics: "天体物理学", formulae: "兆赫"),
          Maths(physics: "微分方程", formulae: "余弦级数")]
// 检查类型
var chemCount = 0
var mathsCount = 0
for item in sa {
    if item is Chemistry {  // 如果是一个 Chemistry 类型的实例，返回 true，相反返回 false
        chemCount += 1
    } else if item is Maths {
        mathsCount += 1
    }
}
print("化学科目包含 \(chemCount) 个主题，数学包含 \(mathsCount) 个主题")
// 向下转型
for item in sa {
    // 条件形式(as?)
    if let show = item as? Chemistry {
        print("化学主题是：'\(show.physics)'，\(show.equations)")
    } else if let example = item as? Maths {
        print("数学主题是：'\(example.physics)'，\(example.formulae)")
    }
}
// Any和AnyObject的类型转换
// Any 实例
var exampleAny = [Any]()
exampleAny.append(12)
exampleAny.append(3.14159)
exampleAny.append("Any 实例")
exampleAny.append(Chemistry(physics: "固体物理", equations: "兆赫"))
for item in exampleAny {
    // 强制形式(as!)
    // 在一个switch语句的case中使用强制形式的类型转换操作符（as, 而不是 as?）来检查和转换到一个明确的类型。
    switch item {
    case let someInt as Int:
        print("整型值为 \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("Pi 值为 \(someDouble)")
    case let someString as String:
        print("\(someString)")
    case let phy as Chemistry:
        print("主题 '\(phy.physics)', \(phy.equations)")
    default:
        print("None")
    }
}
// AnyObject 实例
let saprint: [AnyObject] = [Chemistry(physics: "固体物理", equations: "赫兹"),
                            Maths(physics: "流体动力学", formulae: "千兆赫"),
                            Chemistry(physics: "热物理学", equations: "分贝"),
                            Maths(physics: "天体物理学", formulae: "兆赫"),
                            Maths(physics: "微分方程", formulae: "余弦级数")]
for item in saprint {
    // 类型转换的条件形式
    if let show = item as? Chemistry {
        print("化学主题是: '\(show.physics)', \(show.equations)")
    } else if let example = item as? Maths {
        print("数学主题是: '\(example.physics)',  \(example.formulae)")
    }
}

// 扩展
// 计算型属性
extension Int {
    var add: Int {
        return self + 100
    }
    var sub: Int {
        return self - 10
    }
    var mul: Int {
        return self * 10
    }
    var div: Int {
        return self / 5
    }
}
let addition2 = 3.add
print("加法运算后的值：\(addition2)")

let subtraction = 120.sub
print("减法运算后的值：\(subtraction)")

let multiplication = 39.mul
print("乘法运算后的值：\(multiplication)")

let division2 = 55.div
print("除法运算后的值: \(division2)")

let mix = 30.add + 34.sub
print("混合运算结果：\(mix)")

// 协议
// 对属性的规定
protocol ClassA {
    var marks: Int { get set }
    var result: Bool { get }
    
    func attendance() -> String
    func markssecured() -> String
}
protocol ClassB: ClassA {
    var present: Bool { get set }
    var subject: String { get set }
    var stname: String { get set }
}
class ClassC: ClassB {
    var marks = 96
    let result = true
    
    var present = false
    var subject = "Swift 协议"
    var stname = "Protocols"
    
    func attendance() -> String {
        return "The \(stname) has secured 99% attendance"
    }
    func markssecured() -> String {
        return "\(stname) has scored \(marks)"
    }
}
let studdet = ClassC()
studdet.stname = "Swift"
studdet.marks = 98
print(studdet.markssecured())
print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)
