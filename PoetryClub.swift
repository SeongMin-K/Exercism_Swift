import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    return poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
    return line.first ?? "_"
}

func capitalize(_ phrase: String) -> String {
    var result = String()
    var check = true
    var count = 0
    for char in phrase {
        if count == 0 {
            result += char.uppercased()
            check = false
        }
        else if check {
            result += char.uppercased()
            check = false
        }
        else if char == " " {
            result += char.lowercased()
            check = true
        } else {
            result += char.lowercased()
            check = false
        }
        count += 1
    }
    return result
}

func trimFromEnd(_ line: String) -> String {
    return line.trimmingCharacters(in: .whitespaces)
}

func lastLetter(_ line: String) -> Character {
    return line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
    let result = capitalize(phrase) + ", please"
    return result
}

func ithLetter(_ line: String, i: Int) -> Character {
    if i < line.count {
        let index = line.index(line.startIndex, offsetBy: i)
        return line[index]
    } else {
        return " "
    }
}

func secretRoomPassword(_ phrase: String) -> String {
    return phrase.uppercased() + "!"
}
