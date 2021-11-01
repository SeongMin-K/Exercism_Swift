//Solution goes in Sources
struct DNA {
    let dna: String
    init?(strand: String) {
        guard Set(strand).isSubset(of: Set("ATCG")) else { return nil }
        dna = strand
    }
    
    func count(_ match: Character) -> Int {
        return dna.filter({ $0 == match }).count
    }
    
    func counts() -> [String: Int] {
        var result = ["A": 0, "T": 0, "C": 0, "G": 0]
        for c in dna {
            if c == "A" { result["A"]! += 1 }
            else if c == "T" { result["T"]! += 1 }
            else if c == "C" { result["C"]! += 1 }
            else { result["G"]! += 1 }
        }
        return result
    }
}
