//: [Previous](@previous)

import Foundation

//: # 数组
//: ## 数组的简单语法
var someInt: Array<Int> = []
var someInts: [Int] = []

//: ## 用数组字面量构造数组
var shoppingList = ["Eggs", "Milk"]

//: ## 访问和修改数组
shoppingList.append("Flour")
shoppingList[1...2] = ["Cheese", "Butter", "Apples"]
print(shoppingList)

//: ## 数组的遍历
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

//: [Next](@next)
