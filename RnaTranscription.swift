//Solution goes in Sources
struct Nucleotide {
    var dna: String
    init(_ str: String) {
        dna = str
    }
    
    func complementOfDNA() throws -> String {
        var result = ""
        
        for c in dna {
            switch c {
            case "G":
                result += "C"
            case "C":
                result += "G"
            case "T":
                result += "A"
            case "A":
                result += "U"
            default:
                throw RnaTranscription.TranscriptionError.invalidNucleotide(message: "\(c) is not a valid Nucleotide")
            }
        }
        
        return result
    }
}

struct RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(message: String)
    }
}
