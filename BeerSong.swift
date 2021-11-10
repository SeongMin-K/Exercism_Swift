//Solution goes in Sources
struct BeerSong {
    var numberOfBeerBottles: Int
    
    func generateVersesOfBeerSong() -> String {
        var song = String()
        for num in stride(from: numberOfBeerBottles, through: 0, by: -1) {
            switch num {
            case 0: song += """
                            No more bottles of beer on the wall, no more bottles of beer.
                            Go to the store and buy some more, 99 bottles of beer on the wall.
                            """
            case 1: song += """
                            1 bottle of beer on the wall, 1 bottle of beer.
                            Take one down and pass it around, no more bottles of beer on the wall.
                            
                            
                            """
            default: song += """
                            \(num) bottles of beer on the wall, \(num) bottles of beer.
                            Take one down and pass it around, \(num - 1) bottle\(num != 2 ? "s" : "") of beer on the wall.
                            
                            
                            """
            }
        }
        return song
    }
}
