//: 结果
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
    var formatted = "昵称:\(sender.nick)\n"
    if let content = content {
      formatted += "\(content)\n"
    }
    if let images = images {
      images.forEach { image in
        formatted += "🏔"
      }
      formatted += "\n"
    }
    if let comments = comments {
      comments.forEach { comment in
        formatted += "\(comment.sender.nick): \(comment.content)\n"
      }
    }
    return formatted
  }
}

let jianJian = User(username: "Jian", nick: "贱贱", avatar: "http://avatar.com/1.png", profileImage: "http://profile.com/1.png")
let xiaoJing = User(username: "Jing", nick: "刘文静", avatar: "http://avatar.com/2.png", profileImage: "http://profile.com/2.png")

let comment1 = Comment(content: "什么新闻？", sender: jianJian)
let comment2 = Comment(content: "你果然不爱我了，都不问我为什么吃药！！！哼！！！", sender: xiaoJing)

let tweet1 = Tweet(content: "我今天吃药的时候看到了一条新闻", images: ["http://image/1.png"], sender: xiaoJing, comments: [comment1, comment2])
print(tweet1.formatedTweet())

//: [循环](L10)
