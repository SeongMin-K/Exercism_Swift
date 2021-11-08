//Solution goes in Sources
struct Scrabble {
    var word: String?
    init(_ word: String?) {
        self.word = word
    }
    
    var score: Int {
        if let letters = word { return Scrabble.score(letters) }
        return 0
    }
    
    static func score(_ word: String) -> Int {
        var result = 0
        for char in word.uppercased() {
            switch char {
            case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
                result += 1
            case "D", "G":
                result += 2
            case "B", "C", "M", "P":
                result += 3
            case "F", "H", "V", "W", "Y":
                result += 4
            case "K":
                result += 5
            case "J", "X":
                result += 8
            case "Q", "Z":
                result += 10
            default:
                result += 0
            }
        }
        return result
    }
}
