//Solution goes in Sources
extension Array {
    func keep(f: (Element) -> Bool) -> [Element] {
        var result = [Element]()
        for item in self {
            if f(item) { result.append(item) }
        }
        return result
    }
    
    func discard(f: (Element) -> Bool) -> [Element] {
        return self.keep { !f($0) }
    }
}
