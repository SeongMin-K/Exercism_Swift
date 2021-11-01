//Solution goes in Sources
struct BinarySearch {
    let list: [Int]
    let middle: Int
    init(_ data: [Int]) throws {
        if data != data.sorted() { throw BinarySearchError.unsorted }
        list = data
        middle = list.count / 2
    }
    
    func searchFor(_ match: Int) -> Int? {
        var low = 0
        var high = list.count - 1
        while low <= high {
            let mid = (low + high) / 2
            let guess = list[mid]
            if guess == match { return mid }
            else if guess > match { high = mid - 1 }
            else { low = mid + 1 }
        }
        return nil
    }
}

enum BinarySearchError: Error {
    case unsorted
}
