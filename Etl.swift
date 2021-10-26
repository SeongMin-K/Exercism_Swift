//Solution goes in Sources
class ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var results = [String: Int]()
        let point1 = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
        let point2 = ["D", "G"]
        let point3 = ["B", "C", "M", "P"]
        let point4 = ["F", "H", "V", "W", "Y"]
        let point5 = ["K"]
        let point8 = ["J", "X"]
        let point10 = ["Q", "Z"]
        
        for (key, value) in old {
            for v in value {
                if point1.contains(v) {
                    results[v.lowercased()] = key
                }
                if point2.contains(v) {
                    results[v.lowercased()] = key
                }
                if point3.contains(v) {
                    results[v.lowercased()] = key
                }
                if point4.contains(v) {
                    results[v.lowercased()] = key
                }
                if point5.contains(v) {
                    results[v.lowercased()] = key
                }
                if point8.contains(v) {
                    results[v.lowercased()] = key
                }
                if point10.contains(v) {
                    results[v.lowercased()] = key
                }
            }
        }
        return results
    }
}
