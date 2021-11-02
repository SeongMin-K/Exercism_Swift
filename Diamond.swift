//Solution goes in Sources
struct Diamond {
    static func makeDiamond(letter: Character) -> [String] {
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { $0 }
        guard let index = alphabet.firstIndex(of: letter) else { return [] }
        let size = index * 2 + 1
        var result = [String]()
        for i in 0...index {
            var line = Array(repeating: " ", count: size)
            line[index - i] = String(alphabet[i])
            line[index + i] = String(alphabet[i])
            result.append(String(line.joined()))
        }
        result += result.dropLast().reversed()
        return result
    }
}
