//Solution goes in Sources
import Foundation

struct ProteinTranslation {
    enum TranslationError: Error {
        case invalidCodon
    }
    
    static func translationOfCodon(_ codon: String) throws -> String {
        switch codon {
        case "AUG":
            return "Methionine"
        case "UUU", "UUC":
            return "Phenylalanine"
        case "UUA", "UUG":
            return "Leucine"
        case "UCU", "UCC", "UCA", "UCG":
            return "Serine"
        case "UAU", "UAC":
            return "Tyrosine"
        case "UGU", "UGC":
            return "Cysteine"
        case "UGG":
            return "Tryptophan"
        case "UAA", "UAG", "UGA":
            return "STOP"
        default:
            throw TranslationError.invalidCodon
        }
    }
    
    static func translationOfRNA(_ rna: String) throws -> [String] {
        var result = [String]()
        var rna = rna[...]
        while rna.count >= 3 {
            switch try translationOfCodon(String(rna.prefix(3))) {
            case "STOP":
                return result
            case let codon:
                result.append(codon)
                rna.removeFirst(3)
            }
        }
        return result
    }
}
