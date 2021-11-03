//Solution goes in Sources
import Foundation
struct IsbnVerifier {
    static func isValid(_ isbn: String) -> Bool {
        guard !isbn.isEmpty else { return false }
        let str = isbn.components(separatedBy: "-").joined()
        guard str.count == 10 else { return false }
        var arr = [Int]()
        var index = 0
        for c in str {
            if c.isNumber { arr.append(c.wholeNumberValue!) }
            else if c == "X" && index == 9 { arr.append(10) }
            else { return false }
            index += 1
        }
        return arr.enumerated().map { $0.element * (arr.count - $0.offset) }.reduce(0, +) % 11 == 0
    }
}
