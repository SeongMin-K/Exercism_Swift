//Solution goes in Sources
struct Garden {
    enum Plant: Character {
        case clover = "C"
        case grass = "G"
        case radishes = "R"
        case violets = "V"
    }
    
    static let allChildren = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    
    let garden: String
    let kid: [String]
    init(_ str: String, children: [String] = Garden.allChildren) {
        garden = str
        kid = children.sorted()
    }
    
    func plantsForChild(_ name: String) -> [Plant] {
        var result = [Plant]()
        let index = (kid.index(of: name) ?? 0) * 2
        garden.split(separator: "\n").forEach {
            let firstIndex = $0.index($0.startIndex, offsetBy: index)
            let secondIndex = $0.index(firstIndex, offsetBy: 1)
            result.append(contentsOf: $0[firstIndex...secondIndex].compactMap { Plant(rawValue: $0) })
        }
        return result
    }
}
