//: 自定义类型
struct Friend {
  let name: String
  let age: Int
  let phone: String
}

let lilei = Friend(name: "李雷", age: 32, phone: "18629193838")

print(lilei.name)
print(lilei.age)
print(lilei.phone)

print("我有一个好朋友叫\(lilei.name)，他今年\(lilei.age)岁，未婚, 他电话是\(lilei.phone)")
//: ### 定义一个`User`类型
//: 1. 包含四个`String`类型的属性，分别是
//: * `username`(用户名)
//: * `nick`(昵称)
//: * `avatar`(头像地址)
//: * `profileImage`(背景图地址)
//: 2. 创建2个User常量
//: 
//: 练习区域👇



//: [类型推导](L4)/[自定义类型扩展](L6)
