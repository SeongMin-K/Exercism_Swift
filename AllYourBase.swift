//Solution goes in Sources
import Foundation

enum BaseError: Error {
    case invalidInputBase
    case invalidOutputBase
    case negativeDigit
    case invalidPositiveDigit
}

struct Base {
    static func outputDigits(inputBase: Int, inputDigits: [Int], outputBase: Int) throws -> [Int] {
        if inputBase < 2 { throw BaseError.invalidInputBase }
        if outputBase < 2 { throw BaseError.invalidOutputBase }
        if inputDigits.contains(where: { $0 < 0 }) { throw BaseError.negativeDigit }
        if inputDigits.contains(where: { $0 >= inputBase }) { throw BaseError.invalidPositiveDigit }
        
        var sum = 0
        var len = inputDigits.count
        for digit in inputDigits {
            len -= 1
            sum += digit * Int((pow(Double(inputBase), Double(len))))
        }
        return radixChange(sum, outputBase)
    }
    
    static func radixChange(_ number: Int, _ radix: Int) -> [Int] {
        var result = [Int]()
        var num = number
        while (num != 0){
            result.append(num % radix)
            num = num / radix
        }
        return result.reversed()
    }
}
