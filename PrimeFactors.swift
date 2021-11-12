//Solution goes in Sources
struct PrimeFactors {
    var toArray = [Int]()
    init(_ num: Int) {
        var temp = num
        var div = 2
        while temp / div >= 1 {
            if temp % div == 0 {
                temp = temp / div
                toArray.append(div)
            } else { div += 1 }
        }
    }
}
