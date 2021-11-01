//Solution goes in Sources
struct Raindrops {
    let num: Int
    init(_ number: Int) {
        num = number
    }
    
    var sounds: String {
        var result = String()
        if num % 3 == 0 { result += "Pling" }
        if num % 5 == 0 { result += "Plang" }
        if num % 7 == 0 { result += "Plong" }
        if result.isEmpty { result = String(num) }
        return result
    }
}
