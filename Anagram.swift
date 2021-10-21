//Solution goes in Sources
import Foundation

class Anagram {
  var word: String
  
  init(word: String) {
    self.word = word.lowercased()
  }

  func match(_ words: [String]) -> [String] {
    var result = [String]()
    
    for match in words {
      if word != match.lowercased() && word.lowercased().sorted() == match.lowercased().sorted() {
        result.append(match)
      }
    }
  
    return result
  }
}
