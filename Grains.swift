//Solution goes in Sources
import Foundation

struct Grains {
    static var total: UInt64 = try! (1...64).map(square).reduce(0, +)
    
    static func square(_ num: Int) throws -> UInt64 {
        guard num >= 1 else {
            throw GrainsError.inputTooLow("Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        guard num <= 64 else  {
            throw GrainsError.inputTooHigh("Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        return UInt64(pow(2, Double(num - 1)))
    }
    
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
}
