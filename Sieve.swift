//Solution goes in Sources
import Foundation

struct Sieve {
    let limit: Int
    init(_ num: Int) {
        limit = num
    }
    
    var primes: [Int] {
        var sieve = Array(repeating: true, count: limit)
        for num in 2..<limit where sieve[num] {
            for next in stride(from: num * 2, to: limit, by: num) {
                sieve[next] = false
            }
        }
        return (2..<limit).filter{ sieve[$0] == true }
    }
}
