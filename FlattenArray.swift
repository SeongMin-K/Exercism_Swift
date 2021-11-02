//Solution goes in Sources
func flattenArray<T>(_ array: [Any?]) -> [T] {
    var result = [T]()
    for item in array {
        if let subArray = item as? [Any?] {
            result.append(contentsOf: flattenArray(subArray))
        }
        else if let item = item as? T {
            result.append(item)
        }
    }
    return result
}
