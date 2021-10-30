//Solution goes in Sources
class GradeSchool {
    var roster = [Int: [String]]()
    var sortedRoster: [Int: [String]] {
        roster.mapValues { $0.sorted() }
    }
    
    func addStudent(_ name: String, grade: Int) {
        if roster[grade] == nil {
            roster[grade] = []
        }
        roster[grade]?.append(name)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}
