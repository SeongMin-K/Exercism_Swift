//Solution goes in Sources
import Foundation

struct Meetup {
    let year: Int
    let month: Int
    
    func day(_ dayOfWeek: Int, which: String) -> String {
        var date: Date
        let dateFormatter: DateFormatter = {
            let df = DateFormatter()
            df.dateFormat = "yyyy-MM-dd"
            return df
        }()
        let getDate: (Int) -> Date = {
            Calendar.current.date(from: DateComponents(
                calendar: Calendar.current,
                year: self.year,
                month: self.month,
                weekday: dayOfWeek,
                weekdayOrdinal: $0
            ))!
        }
        
        switch which {
        case "1st": date = getDate(1)
        case "2nd": date = getDate(2)
        case "3rd": date = getDate(3)
        case "4th": date = getDate(4)
        case "last":
            var dateComponents = DateComponents(
                calendar: Calendar.current,
                year: self.year,
                month: self.month,
                weekday: dayOfWeek,
                weekdayOrdinal: 5
            )
            date = Calendar.current.date(from: dateComponents)!
            if Calendar.current.component(.month, from: date) != dateComponents.month {
                dateComponents.weekdayOrdinal = 4
                date = Calendar.current.date(from: dateComponents)!
            }
        case "teenth":
            var dateComponents = DateComponents(
                calendar: Calendar.current,
                year: self.year,
                month: self.month,
                weekday: dayOfWeek,
                weekdayOrdinal: 3
            )
            date = Calendar.current.date(from: dateComponents)!
            if Calendar.current.component(.day, from: date) > 19 {
                dateComponents.weekdayOrdinal = 2
                date = Calendar.current.date(from: dateComponents)!
            }
        default:fatalError()
        }
        return dateFormatter.string(from: date)
    }
}
