//Solution goes in Sources
struct CollatzConjecture {
    static func steps(_ num: Int) throws -> Int {
        var step = 0
        var value = num
        guard num > 0 else { throw InputError() }
        while value != 1 {
            value % 2 == 0 ? (value /= 2) : (value = value * 3 + 1)
            step += 1
        }
        return step
    }
    struct InputError: Error {}
}
