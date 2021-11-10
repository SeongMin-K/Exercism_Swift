//Solution goes in Sources
struct Allergies {
    let allergyScore: UInt
    init(_ num: UInt) {
        allergyScore = num
    }
    
    enum AllergyTypes: UInt {
        case eggs = 1
        case peanuts = 2
        case shellfish = 4
        case strawberries = 8
        case tomatoes = 16
        case chocolate = 32
        case pollen = 64
        case cats = 128
    }
    
    func hasAllergy(_ allergy: AllergyTypes) -> Bool {
        return allergyScore & allergy.rawValue == allergy.rawValue
    }
}
