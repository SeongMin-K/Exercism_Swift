//Solution goes in Sources
struct Hamming {
    static func compute(_ dna: String, against: String) -> Int? {
        let first = Array(dna)
        let second = Array(against)
        
        if dna.count != against.count { return nil }
        
        return zip(first, second).filter({ $0.0 != $0.1 }).count
    }
}
