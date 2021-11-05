//Solution goes in Sources
struct Queens {
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }
    
    let white: [Int]
    let black: [Int]
    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        if white.count > 2 || black.count > 2 { throw InitError.incorrectNumberOfCoordinates }
        else if white.contains(where: { $0 < 0 }) || black.contains(where: { $0 < 0 }) { throw InitError.invalidCoordinates }
        else if white.contains(where: { $0 > 7 }) || black.contains(where: { $0 > 7 }) { throw InitError.invalidCoordinates }
        else if white == black { throw InitError.sameSpace }
        
        self.white = white
        self.black = black
    }
    
    var description: String {
        return (0...7).map { x in
            (0...7).map { y in
                switch [x, y] {
                case white: return "W"
                case black: return "B"
                default: return "_"
                }
            }.joined(separator: " ")
        }.joined(separator: "\n")
    }
    
    var canAttack: Bool {
        return white[0] == black[0] || white[1] == black[1] || abs(white[0] - black[0]) == abs(white[1] - black[1])
    }
}
