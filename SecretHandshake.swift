//Solution goes in Sources
struct SecretHandshake {
  let num: Int
  init(_ number: Int) {
    num = number
  }
  
  var commands: [String] {
    var result: [String] = []
    let str = "00000" + String(num, radix: 2)
    let startIdx: String.Index = str.index(str.endIndex, offsetBy: -5)
    let binary = String(str[startIdx...])
    var count = 0
    var reverse = true
    
    for s in binary {
      if s == "1" {
        if count == 0 {
          reverse = false
        }
        else if count == 1 {
          result.append("jump")
        }
        else if count == 2 {
          result.append("close your eyes")
        }
        else if count == 3 {
          result.append("double blink")
        }
        else if count == 4 {
          result.append("wink")
        }
      }
      count += 1
    }
    if reverse == true {
      result = result.reversed()
    }
    return result
  }
}
