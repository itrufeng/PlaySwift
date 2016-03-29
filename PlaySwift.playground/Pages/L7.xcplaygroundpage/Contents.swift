//: Optional
struct Friend {
  let name: String
  let age: Int
  let phone: String?
  let home: Home?
}

struct Home {
  let address: String
  let floorSpace: Int
}

let homeOfLilei = Home(address: "西安市雁塔区八里村", floorSpace: 20)
let lilei = Friend(name: "李雷", age: 32, phone: "18629193838", home: homeOfLilei)

let homeOfHanmeimei = Home(address: "西安市雁塔区明德门", floorSpace: 10)
let hanmeimei = Friend(name: "韩梅梅", age: 31, phone: nil, home: nil)

print("我有一个好朋友，叫做\(lilei.name)，他有一套\(lilei.home?.floorSpace)平米的房子在\(lilei.home?.address)")
print("我还有一个不太好的朋友，叫做\(hanmeimei.name)，她有一套\(hanmeimei.home?.floorSpace)平米的房子在\(hanmeimei.home?.address)")
print("我有一个好朋友，叫做\(lilei.name)，他有一套\(lilei.home!.floorSpace)平米的房子在\(lilei.home!.address)")
if let floorSpace = lilei.home?.floorSpace,
  address = lilei.home?.address {
  print("我有一个好朋友，叫做\(lilei.name)，他有一套\(floorSpace)平米的房子在\(address)")
}
//: ### 定义一个`Tweet`类型
//: 1. 包含`String?`类型的`content`(内容)
//: 2. 包含`[String]?`类型的`images`(图片)
//: 3. 包含`User`类型的`sender`(发送者)
//: 4. 包含`[Comment]?`类型的`comments`(评论)
//:
//: 练习区域👇
struct User {
  let username: String
  let nick: String
  let avatar: String
  let profileImage: String
}

struct Comment {
  let content: String
  let sender: User
}



//: [自定义类型扩展](L6)/[定义方法](L8)
