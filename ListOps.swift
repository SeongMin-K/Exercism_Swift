//Solution goes in Sources
struct ListOps {
    static func append<T>(_ list1: [T], _ list2: [T]) -> [T] {
        return list1 + list2
    }
    
    static func concat<T>(_ list: [T]...) -> [T] {
        return list.reduce([], { $0 + $1 })
    }
    
    static func filter<T>(_ list: [T], _ filter: (T) -> Bool) -> [T] {
        var result = [T]()
        for item in list {
            if filter(item) {
                result.append(item)
            }
        }
        return result
    }
    
    static func length<T>(_ list: [T]) -> Int {
        return list.count
    }
    
    static func map<T>(_ list: [T], _ map: (T) -> T) -> [T] {
        var result = [T]()
        for item in list {
            result.append(map(item))
        }
        return result
    }

    static func foldLeft<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated
        for item in list {
            result = combine(result, item)
        }
        return result
    }

    static func foldRight<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated
        for i in 1...list.count {
            let item = list[list.count - i]
            result = combine(item, result)
        }
        return result
    }

    static func reverse<T>(_ list: [T]) -> [T] {
        return list.reversed()
    }
}
