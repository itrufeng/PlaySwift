//: 定义方法
struct Friend {
  let name: String
  let age: Int
  let phone: String?
  let home: Home?
  
  func introduceSelf() {
    if let floorSpace = home?.floorSpace,
      address = home?.address {
      print("我叫\(name)，我有一套\(floorSpace)平米的房子在\(address)")
    }
  }
  
  func introduce(bySomeone: String) {
    if let floorSpace = home?.floorSpace,
      address = home?.address {
      print("\(bySomeone): 他叫\(name)，他有一套\(floorSpace)平米的房子在\(address)")
    }
  }
  
  func introduceInfo(bySomeone: String) -> String? {
    if let floorSpace = home?.floorSpace,
      address = home?.address {
      return "\(bySomeone): 他叫\(name)，他有一套\(floorSpace)平米的房子在\(address)"
    }
    
    return nil
  }
}

struct Home {
  let address: String
  let floorSpace: Int
}

let homeOfLilei = Home(address: "西安市雁塔区八里村", floorSpace: 20)
let lilei = Friend(name: "李雷", age: 32, phone: "18629193838", home: homeOfLilei)

lilei.introduceSelf()
lilei.introduce("韩梅梅")
let info = lilei.introduceInfo("刘文静")
//: ### 定义一个`formatedTweet()`方法, 返回一个`String`类型(一条被格式化的朋友圈信息)
//: ```
//: 昵称:刘文静
//: 我今天吃药的时候看到了一条新闻
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
}



//: [Optional](L7)/[分支](L9)
