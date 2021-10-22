//Solution goes in Sources
import Foundation

struct Acronym {
    static func abbreviate(_ string: String) -> String {
        var result = string

        if string.contains(":") {
            let sep = string.components(separatedBy: ":")
            return sep[0]
        } else {
            let spl = string.split {$0 == "-" || $0 == " "}
            result.removeAll()
            for word in spl {
                var check = false
                for ch in word {
                    if ch.isUppercase {
                        result.append(ch)
                        check = true
                    }
                }
                if check {
                    continue
                } else {
                    result += word[word.startIndex].uppercased()
                }
            }
        }
        return result
    }
}
