//Solution goes in Sources
struct NumberClassifier {
    enum Types {
        case perfect
        case abundant
        case deficient
    }
    
    let number: Int
    var classification: Types {
        let sum = (1..<number).filter { number % $0 == 0 }.reduce(0, +)
        if sum == number { return .perfect }
        return sum > number ? .abundant : .deficient
    }
}
