//Solution goes in Sources
extension Array where Element == String {
    func recite() -> String {
        var proverb = String()
        for index in indices {
            if index < count - 1 { proverb += "For want of a \(self[index]) the \(self[index + 1]) was lost.\n"  }
            else { proverb += "And all for the want of a \(self[0])." }
        }
        return proverb
    }
}
