//Solution goes in Sources
import Foundation

struct Gigasecond {
    let description: String
    init?(from: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        guard let now = formatter.date(from: from) else { return nil }
        let future = now.addingTimeInterval(1000000000)
        description = formatter.string(from: future)
    }
}
