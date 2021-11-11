//Solution goes in Sources
struct Pangram {
    static func isPangram(_ sentence: String) -> Bool {
        let alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        return alphabets.allSatisfy { sentence.uppercased().contains($0) }
    }
}
