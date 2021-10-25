func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newArray = stack
    if 0..<newArray.count ~= index {
        newArray[index] = newCard
    }
    return newArray
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newArray = stack
    newArray.insert(newCard, at: newArray.endIndex)
    return newArray
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newArray = stack
    if 0..<newArray.count ~= index {
        newArray.remove(at: index)
    }
    return newArray
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    var newArray = stack
    if !newArray.isEmpty {
        newArray.removeLast()
    }
    return newArray
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newArray = stack
    newArray.insert(newCard, at: newArray.startIndex)
    return newArray
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var newArray = stack
    newArray.removeFirst()
    return newArray
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    var count = 0
    for card in stack {
        if card % 2 == 0 {
            count += 1
        }
    }
    return count
}
