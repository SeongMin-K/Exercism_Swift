//Solution goes in Sources
import Foundation

struct Isogram {
    static func isIsogram(_ word: String) -> Bool {
        var result = word.lowercased()
        result.removeAll { !$0.isLetter }
        return result.count == Set(result).count
    }
}
