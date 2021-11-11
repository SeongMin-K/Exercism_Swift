//Solution goes in Sources
struct NumberSeries {
    var code: String
    init(_ number: String) {
        code = number
    }
    
    enum NumberSeriesError: Error {
        case spanLongerThanStringLength
        case invalidCharacter
        case negativeSpan
    }
    
    func largestProduct(_ n: Int) throws -> Int {
        if n > code.count { throw NumberSeriesError.spanLongerThanStringLength }
        if code.contains(where: { !$0.isNumber } ) { throw NumberSeriesError.invalidCharacter }
        if n < 0 { throw NumberSeriesError.negativeSpan }
        
        let arr = code.map { $0.wholeNumberValue! }
        var results = [Int]()
        for start in 0...arr.count - n {
            var result = 1
            for i in start..<start + n {
                result *= arr[i]
            }
            results.append(result)
        }
        return results.max()!
    }
}
