//Solution goes in Sources
import Foundation

struct Clock: Equatable {
    var hour: Int
    var minute: Int
    init(hours: Int, minutes: Int = 0) {
        hour = hours
        minute = minutes
        calculate()
    }
    
    mutating func calculate() {
        if minute >= 60 {
            hour += minute / 60
            minute = minute % 60
        }
        while minute < 0 {
            hour -= 1
            minute += 60
        }
        if hour >= 24 {
            hour = hour % 24
        }
        while hour < 0 {
            hour += 24
        }
    }
    
    var description: String {
        let hours = String(format: "%02d", hour)
        let minutes = String(format: "%02d", minute)
        return hours + ":" + minutes
    }
    
    func add(minutes: Int) -> String {
        return Clock(hours: hour, minutes: minute + minutes).description
    }
    
    func subtract(minutes: Int) -> String {
        return add(minutes: -minutes).description
    }
}
