//Solution goes in Sources
struct SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        let listOfMultiples = (0..<limit).filter { num in
          inMultiples.contains { multiple in
            multiple > 0 && num % multiple == 0
          }
        }
        return listOfMultiples.reduce(0, +)
    }
}
