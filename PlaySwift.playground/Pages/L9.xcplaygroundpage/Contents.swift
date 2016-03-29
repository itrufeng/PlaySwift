//: 分支
struct Friend {
  let name: String
  let age: Int
  let phone: String?
  let home: Home?
  
  func introduceSelf() {
    if let floorSpace = home?.floorSpace,
      address = home?.address {
      print("我叫\(name)，我有一套\(floorSpace)平米的房子在\(address)")
    } else {
      print("我叫\(name)，我好穷")
    }
  }
  
  func introduce(bySomeone: String) {
    if age > 22 {
      print("\(bySomeone): 他都\(age)岁了，还没个女朋友，看看你同学，娃都1岁了。再看看你")
    } else {
      print("\(bySomeone): 他才\(age)岁，好好上学，别着急，好姑娘有的是。")
    }
  }
  
  func introduceInfo(bySomeone: String) -> String {
    if age > 80 && home == nil {
      return "\(bySomeone): 他都\(age)岁了，还没个家，也是可怜啊！"
    } else if age > 80 && home != nil {
      return "\(bySomeone): 他都\(age)岁了，房产还没到期，真是幸运啊～"
    }
    
    return "\(bySomeone): 实在编不下去了！！！"
  }
}

struct Home {
  let address: String
  let floorSpace: Int
}

let lilei = Friend(name: "李雷", age: 52, phone: nil, home: nil)

lilei.introduceSelf()
lilei.introduce("韩梅梅")
let info = lilei.introduceInfo("刘文静")
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



//: [定义方法](L8)/[循环](L10)
