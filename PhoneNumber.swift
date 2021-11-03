//Solution goes in Sources
import Foundation

struct PhoneNumber {
    let number: String
    init(_ startNumber: String) {
        let separator: CharacterSet = ["+", "(", ")", "-", ".", " "]
        var result = startNumber.components(separatedBy: separator).joined()
        if result.first == "1" { result.removeFirst() }
        number = result.count == 10 ? result : "0000000000"
    }
    
    var areaCode: String {
        return String(number.prefix(3))
    }
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
        var result = number
        result.insert("(", at: result.startIndex)
        result.insert(")", at: result.index(result.startIndex, offsetBy: 4))
        result.insert(" ", at: result.index(result.startIndex, offsetBy: 5))
        result.insert("-", at: result.index(result.startIndex, offsetBy: 9))
        return result
    }
}
