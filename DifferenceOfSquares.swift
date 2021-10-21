//Solution goes in Sources
import Foundation

struct Squares {
  var num: Int

  var squareOfSum: Int {
    get {
      var result = 0
      for i in 1...num {
        result += i
      }
      result = Int(pow(Double(result), 2))
      return result
    }
  }

  var sumOfSquares: Int {
    get {
      var result = 0
      for i in 1...num {
        result += Int(pow(Double(i), 2))
      }
      return result
    }
  }

  var differenceOfSquares: Int {
    get {
      return squareOfSum - sumOfSquares
    }
  }

  init (_ number: Int) {
       num = number
  }
}
