//Solution goes in Sources
import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        if input.trimmingCharacters(in: .whitespaces).isEmpty {
            return "Fine. Be that way!"
        }
        if input == input.uppercased() && input.rangeOfCharacter(from: CharacterSet.letters) != nil {
            return "Whoa, chill out!"
        }
        if input.hasSuffix("?") {
            return "Sure."
        }
        return "Whatever."
    }
}
