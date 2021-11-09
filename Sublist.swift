//Solution goes in Sources
import Foundation

enum Compare {
    case equal, sublist, superlist, unequal
}

func classifier(listOne: [Int], listTwo: [Int]) -> Compare {
    if listOne == listTwo { return .equal }
    else if isSublist(listOne, listTwo) { return .sublist }
    else if isSublist(listTwo, listOne) { return .superlist }
    return .unequal
}

func isSublist(_ first: [Int], _ second: [Int]) -> Bool {
    let firstCount = first.count
    let secondCount = second.count
    var result = false
    var idx = 0
    while idx + firstCount <= secondCount {
        let sub = Array(second[idx..<idx + firstCount])
        result = result || (first == sub)
        idx += 1
    }
    return result
}
