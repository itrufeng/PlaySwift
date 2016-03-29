//: 自定义类型扩展
struct Friend {
  let name: String
  let age: Int
  let phone: String
  let home: Home
}

struct Home {
  let address: String
  let floorSpace: Int
}

let home = Home(address: "西安市雁塔区八里村", floorSpace: 20)
let lilei = Friend(name: "李雷", age: 32, phone: "18629193838", home: home)

print("我有一个好朋友，叫做\(lilei.name)，他有一套\(lilei.home.floorSpace)平米的房子在\(lilei.home.address)")
//: ### 定义一个`Comment`类型
//: 1. 包含`String`类型的`content`(内容)
//: 2. 包含`User`类型的`sender`(发送者)
//: 
//: 练习区域👇
struct User {
  let username: String
  let nick: String
  let avatar: String
  let profileImage: String
}



//: [自定义类型](L5)/[Optional](L7)
