//Solution goes in Sources
extension Array {
    func accumulate<T>(_ operation: (Element) -> T) -> [T] {
        var result = [T]()
        for item in self {
            result.append(operation(item))
        }
        return result
    }
}
