//Solution goes in Sources
struct SimulatedRobot {
    enum Movement: Equatable {
        case turnLeft, turnRight, advance
    }
    
    enum Direction {
        case north, east, south, west
    }
    
    var coordinates = [0, 0]
    var bearing = Direction.north
    
    mutating func orient(_ direction: Direction) {
        bearing = direction
    }
    
    mutating func turnRight() {
        switch bearing {
        case .north:    bearing = .east
        case .east:     bearing = .south
        case .south:    bearing = .west
        case .west:     bearing = .north
        }
    }
    
    mutating func turnLeft() {
        switch bearing {
        case .north:    bearing = .west
        case .east:     bearing = .north
        case .south:    bearing = .east
        case .west:     bearing = .south
        }
    }
    
    mutating func at(x: Int, y: Int) {
        (coordinates[0], coordinates[1]) = (x, y)
    }
    
    mutating func advance() {
        switch bearing {
        case .north:    coordinates[1] += 1
        case .east:     coordinates[0] += 1
        case .south:    coordinates[1] -= 1
        case .west:     coordinates[0] -= 1
        }
    }
    
    func instructions(_ order: String) -> [Movement] {
        var result = [Movement]()
        for char in order {
            switch char {
            case "L":   result.insert(Movement.turnLeft, at: result.endIndex)
            case "R":   result.insert(Movement.turnRight, at: result.endIndex)
            case "A":   result.insert(Movement.advance, at: result.endIndex)
            default:    return result
            }
        }
        return result
    }
    
    mutating func place(x: Int, y: Int, direction: Direction) {
        at(x: x, y: y)
        orient(direction)
    }
    
    mutating func evaluate(_ order: String) {
        let orders = instructions(order)
        for order in orders {
            switch order {
            case .turnLeft:     turnLeft()
            case .turnRight:    turnRight()
            case .advance:      advance()
            }
        }
    }
}
