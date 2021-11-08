//Solution goes in Sources
import Foundation

struct ScaleGenerator {
    let sharps = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
    let flats  = ["A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab"]
    
    let tonic: String
    let name: String
    let pattern: String
    init(tonic: String, scaleName: String, pattern: String = "mmmmmmmmmmmm") {
        self.tonic = tonic
        self.name = tonic.uppercased() + " " + scaleName
        self.pattern = pattern
    }
    
    func pitches() -> [String] {
        var index = 0
        var pitches = [String]()
        var result = [0]
        
        if "dFg".contains(tonic.first!) || tonic.last == "b" {
            index = flats.index(of: tonic.capitalized)!
            pitches = Array(flats[index...] + flats[..<index])
        } else {
            index = sharps.index(of: tonic.capitalized)!
            pitches = Array(sharps[index...] + sharps[..<index])
        }
        pattern.forEach{ result.append(result.last! + Array("_mMA").index(of: $0)!) }
        
        guard result.removeLast() == 12 else { return [] }
        return result.compactMap{ pitches[$0] }
    }
}
