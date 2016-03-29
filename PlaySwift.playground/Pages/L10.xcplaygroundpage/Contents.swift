//: 循环
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

let lilei = Friend(name: "李雷", age: 32, phone: nil, home: nil)
let hanmeimei = Friend(name: "韩梅梅", age: 31, phone: nil, home: nil)
let jianjian = Friend(name: "贱贱", age: 24, phone: nil, home: nil)
let liuwenjing = Friend(name: "刘文静", age: 18, phone: nil, home: nil)

let friends = [lilei, hanmeimei, jianjian, liuwenjing]

for friend in friends {
  print(friend.name)
}

friends.forEach { friend in
  print(friend)
}
//: 升级之前的朋友圈，展示多张图片和多条评论
//: ```
//: 昵称:刘文静
//: 我今天吃药的时候看到了一条新闻
//: 🏔🏔🏔
//: 贱贱: 什么新闻？
//: 刘文静: 你果然不爱我了，都不问我为什么吃药！！！哼！！！
//: ```
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

struct Tweet {
  let content: String?
  let images: [String]?
  let sender: User
  let comments: [Comment]?
  
  func formatedTweet() -> String {
    if let content = content {
      return "昵称: \(sender.nick)\n\(content)"
    }
    
    return ""
  }
}



//: [分支](L9)/[结果](L11)
