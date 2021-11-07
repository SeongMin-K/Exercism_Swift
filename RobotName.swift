//Solution goes in Sources
struct Robot {
    var name = String()
    init() {
        naming()
    }
    
    let letters = UInt8(ascii: "A")...UInt8(ascii: "Z")
    let numbers = UInt8(ascii: "0")...UInt8(ascii: "9")
    
    func random(from: ClosedRange<UInt8>) -> Character {
        return Character(UnicodeScalar(from.randomElement()!))
    }
    
    mutating func naming() {
        self.name = String((0..<2).map({ _ in random(from: letters) }) + (0..<3).map({ _ in random(from: numbers) }))
    }
    
    mutating func resetName() {
        naming()
    }
}
